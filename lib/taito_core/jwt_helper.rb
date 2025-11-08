require "jwt"

module TaitoCore
  class JwtHelper
    def self.encode(payload, secret)
      JWT.encode(payload, secret, "HS256")
    end

    def self.decode(token, secret)
      JWT.decode(token, secret, true, algorithm: "HS256")[0]
    rescue JWT::DecodeError => e
      raise TaitoCore::Error, "Invalid token: #{e.message}"
    end
  end
end

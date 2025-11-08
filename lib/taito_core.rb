# frozen_string_literal: true
require "active_support"
require "active_support/core_ext"
require "jwt"
require "faraday"

require_relative "taito_core/jwt_helper"
require_relative "taito_core/tenant_context"
require_relative "taito_core/error_handler"

module TaitoCore
  class Error < StandardError; end
end

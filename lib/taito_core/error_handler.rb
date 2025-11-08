module TaitoCore
    module ErrorHandler
      def self.included(base)
        base.rescue_from(StandardError, with: :render_error)
      end
  
      private
  
      def render_error(error)
        Rails.logger.error("[TaitoCore::ErrorHandler] #{error.class}: #{error.message}")
        render json: { error: error.message }, status: :internal_server_error
      end
    end
  end
  
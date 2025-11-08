module TaitoCore
    module TenantContext
      THREAD_KEY = :current_tenant
  
      def self.set(tenant_id)
        Thread.current[THREAD_KEY] = tenant_id
      end
  
      def self.get
        Thread.current[THREAD_KEY]
      end
  
      def self.clear
        Thread.current[THREAD_KEY] = nil
      end
    end
  end
  
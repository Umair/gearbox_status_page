module StatusPage
  module Services
    class LunaDbException < StandardError; end

    class LunaDb < Base
      def check!
        # Check Luna DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}_luna".to_sym)
      rescue Exception => e
        raise LunaDbException.new(e.message)
      end
    end
  end
end


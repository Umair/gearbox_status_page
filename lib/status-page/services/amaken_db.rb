module StatusPage
  module Services
    class AmakenException < StandardError; end

    class AmakenDb < Base
      def check!
        # Check Amakan DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}".to_sym)
      rescue Exception => e
        raise AmakenException.new(e.message)
      end
    end
  end
end

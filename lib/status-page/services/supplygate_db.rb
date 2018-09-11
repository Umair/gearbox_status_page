module StatusPage
  module Services
    class SupplygateException < StandardError; end

    class SupplygateDb < Base
      def check!
        # Check Supplygate DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}_supplygate".to_sym)
      rescue Exception => e
        raise SupplygateException.new(e.message)
      end
    end
  end
end

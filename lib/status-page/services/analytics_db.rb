module StatusPage
  module Services
    class AnalyticsException < StandardError; end

    class AnalyticsDb < Base
      def check!
        # Check Analytics DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}_analytics".to_sym)
      rescue Exception => e
        raise AnalyticsException.new(e.message)
      end
    end
  end
end

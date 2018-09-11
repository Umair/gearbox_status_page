module StatusPage
  module Services
    class FeatureConfigException < StandardError; end

    class FeatureConfigDb < Base
      def check!
        # Check Feature Config DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}_feature_config".to_sym)
      rescue Exception => e
        raise FeatureConfigException.new(e.message)
      end
    end
  end
end
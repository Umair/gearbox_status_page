module StatusPage
  module Services
    class PromotionException < StandardError; end

    class PromotionDb < Base
      def check!
        # Check Promotion DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}_promotion".to_sym)
      rescue Exception => e
        raise PromotionException.new(e.message)
      end
    end
  end
end

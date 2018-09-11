module StatusPage
  module Services
    class PoiException < StandardError; end

    class PoiDb < Base
      def check!
        # Check POI DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}_poi".to_sym)
      rescue Exception => e
        raise PoiException.new(e.message)
      end
    end
  end
end

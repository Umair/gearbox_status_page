module StatusPage
  module Services
    class CareemDbException < StandardError; end

    class CareemDb < Base
      def check!
        # Check Careem DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}".to_sym)
      rescue Exception => e
        raise CareemDbException.new(e.message)
      end
    end
  end
end

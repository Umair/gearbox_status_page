module StatusPage
  module Services
    class GearboxDbException < StandardError; end

    class GearboxDb < Base
      def check!
        # Check Gearbox DB connection:
        ApplicationRecord.establish_connection("#{Rails.env}_gearbox".to_sym)
      rescue Exception => e
        raise GearboxDbException.new(e.message)
      end
    end
  end
end


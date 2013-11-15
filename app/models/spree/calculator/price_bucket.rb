module Spree
  module Calculator::Shipping
    class PriceBucket < Advanced
      def self.description
        "Price Rate"
      end

      def compute(package)
        content_items = package.contents
        value = total(content_items)
        get_rate(value) || self.preferred_default_amount
      end
    end
  end
end
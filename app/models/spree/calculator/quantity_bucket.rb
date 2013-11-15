module Spree
  module Calculator::Shipping
    class QuantityBucket < Advanced
      def self.description
        "Quantity Rate"
      end

      def compute(package)
        content_items = package.contents
        value = total_quantity(content_items)
        get_rate(value) || self.preferred_default_amount
      end

      def total_quantity(content_items)
        content_items.sum { |item| item.quantity }
      end
    end
  end
end
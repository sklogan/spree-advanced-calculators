module Spree
  module Calculator::Shipping
    class WeightBucket < Advanced
      def self.description
        "Weight Rate"
      end

      def compute(package)
        content_items = package.contents
        value = total_weight(content_items)
        get_rate(value) || self.preferred_default_amount
      end

      def total_weight(content_items)
        content_items.sum { |item| item.quantity * item.variant.weight }
      end
    end
  end
end

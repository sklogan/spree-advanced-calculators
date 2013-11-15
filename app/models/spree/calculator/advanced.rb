class Advanced < Spree::ShippingCalculator
  preference :default_amount, :decimal, :default => 0
  attr_accessible :preferred_default_amount

  has_many :bucket_rates, :class_name => 'Spree::BucketRate', foreign_key:'calculator_id', dependent: :destroy

  def get_rate(value)
    # First try to find where price falls within price floor and ceiling
    bucket = self.bucket_rates.where("floor <= ? and ceiling > ?", value, value).first
    return bucket.rate if bucket
    # find largest one
    bucket = self.bucket_rates.order("ceiling DESC").last
    # check if we've found largest one, and item_total is higher then ceiling
    bucket && value > bucket.ceiling ? bucket.rate : false
  end
end

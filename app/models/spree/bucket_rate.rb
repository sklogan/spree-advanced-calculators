module Spree
  class BucketRate < ActiveRecord::Base
    belongs_to :calculator, class_name: "Spree::Calculator"
    validates_presence_of :floor, :ceiling, :rate, :calculator_id
  end
end

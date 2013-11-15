class CreateAdvancedCalculatorRates < ActiveRecord::Migration
  def change
    create_table :spree_bucket_rates do |t|
      t.references :calculator
      t.decimal :floor, :precision => 8, :scale => 2
      t.decimal :ceiling, :precision => 8, :scale => 2
      t.decimal :rate, :precision => 8, :scale => 2
      t.timestamps
    end
  end
end

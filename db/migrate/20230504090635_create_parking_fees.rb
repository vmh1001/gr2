class CreateParkingFees < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_fees do |t|
      t.string :parking_fee_type
      t.string :parking_fee_description
      t.float :parking_fee_money

      t.timestamps
    end
  end
end

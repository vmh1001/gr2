class CreateParkingFees < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_fees do |t|
      t.string :parking_fees_type
      t.string :parking_fees_description
      t.integer :parking_fees_money

      t.timestamps
    end
  end
end

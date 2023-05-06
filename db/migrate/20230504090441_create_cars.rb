class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :car_category
      t.string :car_description

      t.timestamps
    end
  end
end

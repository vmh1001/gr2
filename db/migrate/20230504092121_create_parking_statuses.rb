class CreateParkingStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_statuses do |t|
      t.references :parking_fee, null: false, foreign_key: true
      t.references :parking_slot, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :permission, null: false, foreign_key: true

      t.timestamps
    end
  end
end

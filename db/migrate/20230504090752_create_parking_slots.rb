class CreateParkingSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_slots do |t|
      t.string :parking_slot_type
      t.string :parking_slot_description

      t.timestamps
    end
  end
end

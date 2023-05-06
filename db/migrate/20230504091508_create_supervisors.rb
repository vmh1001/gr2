class CreateSupervisors < ActiveRecord::Migration[7.0]
  def change
    create_table :supervisors do |t|
      t.references :role_of_supervisor, null: false, foreign_key: true
      t.string :supervisor_name
      t.date :supervisor_DoB
      t.string :supervisor_address
      t.string :supervisor_phone

      t.timestamps
    end
  end
end

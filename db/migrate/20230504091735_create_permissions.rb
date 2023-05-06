class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.references :role_of_supervisor, null: false, foreign_key: true
      t.references :supervisor, null: false, foreign_key: true
      t.date :permission_date

      t.timestamps
    end
  end
end

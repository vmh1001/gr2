class CreateRoleOfSupervisors < ActiveRecord::Migration[7.0]
  def change
    create_table :role_of_supervisors do |t|
      t.string :role_of_supervisor_category

      t.timestamps
    end
  end
end

class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :full_name, null: false
      t.string :job_title, null: false
      t.string :country, null: false
      t.float :salary, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end

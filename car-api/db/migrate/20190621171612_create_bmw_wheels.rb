class CreateBmwWheels < ActiveRecord::Migration[5.2]
  def change
    create_table :bmw_wheels do |t|
      t.references :model, foreign_key: true
      t.string :wheel_link 
      t.string :wheel_code
      t.string :wheel_name

      t.timestamps
    end
  end
end

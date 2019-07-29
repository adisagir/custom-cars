class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.references :user, foreign_key: true
      t.references :make, foreign_key: true
      t.string :vehicle_id
      t.string :fabric_id
      t.string :sa_id
      t.string :name
      t.integer :year
      t.string :style
      t.string :engine
      t.integer :msrp
      t.string :specs
      t.string :drivetrain
      t.string :transmission

      t.timestamps
    end
  end
end

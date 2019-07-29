class CreateMercedesColors < ActiveRecord::Migration[5.2]
  def change
    create_table :mercedes_colors do |t|
      t.references :model, foreign_key: true
      t.string :name
      t.string :color_code
      t.string :color_link

      t.timestamps
    end
  end
end

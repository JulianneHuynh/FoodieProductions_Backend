class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :prep_time
      t.string :cook_time
      t.string :yield
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end

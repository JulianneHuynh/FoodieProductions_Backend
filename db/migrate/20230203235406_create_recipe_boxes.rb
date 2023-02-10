class CreateRecipeBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_boxes do |t|
      t.string :title
      t.string :author
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :opening_note, null: false, foreign_key: true

      t.timestamps
    end
  end
end

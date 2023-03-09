class CreateCookbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :cookbooks do |t|
      t.string :title
      t.string :author
      t.string :cover_image
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

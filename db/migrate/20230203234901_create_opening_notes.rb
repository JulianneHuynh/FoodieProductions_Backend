class CreateOpeningNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :opening_notes do |t|
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end

class AddCookbookIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :cookbook, foreign_key: true
  end
end

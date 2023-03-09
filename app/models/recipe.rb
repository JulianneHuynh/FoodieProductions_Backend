class Recipe < ApplicationRecord

belongs_to :cookbook 
# has_many :users, through: :cookbooks

# has_many :recipe_boxes
# has_many :users, through: :recipe_boxes
end

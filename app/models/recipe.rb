class Recipe < ApplicationRecord

has_many :cookbooks
has_many :users, through: :cookbooks

has_many :recipe_boxes
has_many :users, through: :recipe_boxes
end

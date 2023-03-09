class Cookbook < ApplicationRecord
  belongs_to :user
  has_many :recipes
  # belongs_to :recipe, optional: true

  # validates :recipe_id, presence: false
end

class Cookbook < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  belongs_to :opening_note
end

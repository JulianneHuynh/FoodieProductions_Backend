class User < ApplicationRecord
has_secure_password

# associations
has_many :cookbooks
has_many :recipe_boxes

# validations
validates :first_name, :last_name, :password, presence: true

validates :email, presence: true,uniqueness: true
validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

end

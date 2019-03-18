class Role < ApplicationRecord
  validates :role_id, uniqueness: true

  has_many :users

end

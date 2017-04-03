class Trip < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_one :review
end

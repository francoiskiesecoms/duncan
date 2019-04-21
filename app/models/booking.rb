class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  belongs_to :session
end

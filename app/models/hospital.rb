class Hospital < ApplicationRecord
  has_many :received_dates, through: :received_hospitals
end

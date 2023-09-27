class Hospital < ApplicationRecord
  has_many :received_dates, through: :received_hospitals
  has_one_attached :image
end

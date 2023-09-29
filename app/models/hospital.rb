class Hospital < ApplicationRecord
  has_many :received_dates, through: :received_hospis
  has_one_attached :image
end

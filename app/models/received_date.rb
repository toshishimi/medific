class ReceivedDate < ApplicationRecord
  belongs_to :user
  has_many :medications
  has_many :hospitals, through: :received_hospitals
  has_one_attached :image
end

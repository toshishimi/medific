class ReceivedHospital < ApplicationRecord
  belongs_to :received_date
  belongs_to :hospital
end

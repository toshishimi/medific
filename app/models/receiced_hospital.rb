class ReceicedHospital < ApplicationRecord
  belongs_to :hospital
  belongs_to :receiveddate
end

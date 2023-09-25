class TotalInfo
  include ActiveModel::Model
  include ActiveRecord::AttributeAssignment

  attr_accessor :date, :hospital_name, :medicine_name, :timing, :individual, :days_supply, :notes, :user_id, :image

  with_options presence: true do
    validates :date
    validates :hospital_name
    validates :medicine_name
    validates :user_id
  end

  validate :post_image_validation

  def post_image_validation
    if !self.image.content_type.in?(%('image/jpeg image/png'))
      self.errors.add(:image, 'は JPEG 形式または PNG 形式のみ選択してください')
    end
  end

  def save
    received_date = ReceivedDate.create(date: date, user_id: user_id)
    hospital = Hospital.create(hospital_name: hospital_name)
    ReceivedHospital.create(hospital_id: hospital.id, received_date_id: received_date.id)
    Medication.create(
      medicine_name: medicine_name, timing: timing, individual: individual, days_supply: days_supply, notes: notes, received_date_id: received_date.id
    )
  end
end









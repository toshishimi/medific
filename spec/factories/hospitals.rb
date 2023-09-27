FactoryBot.define do
  factory :hospital do
    hospital_name   {Faker::Name.name}

    after(:build) do |hospital|
      hospital.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

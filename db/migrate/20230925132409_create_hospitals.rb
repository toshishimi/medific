class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string     :hospital_name,              null: false

      t.timestamps
    end
  end
end

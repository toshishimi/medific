class CreateReceicedHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :receiced_hospitals do |t|
      t.references :hospital,              null: false,foreign_key: true
      t.references :receiveddate,          null: false,foreign_key: true


      t.timestamps
    end
  end
end

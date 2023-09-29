class CreateReceivedHospis < ActiveRecord::Migration[6.0]
  def change
    create_table :received_hospis do |t|
      t.references :hospital,              null: false,foreign_key: true 
      t.references :received_date,         null: false,foreign_key: true
      
      t.timestamps
    end
  end
end

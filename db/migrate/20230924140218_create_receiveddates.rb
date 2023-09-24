class CreateReceiveddates < ActiveRecord::Migration[6.0]
  def change
    create_table :receiveddates do |t|
      t.date :date,                    null: false
      t.references :user,              null: false,foreign_key: true
      t.references :medication,        null: false,foreign_key: true

      t.timestamps
    end
  end
end

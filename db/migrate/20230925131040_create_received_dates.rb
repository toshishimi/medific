class CreateReceivedDates < ActiveRecord::Migration[6.0]
  def change
    create_table :received_dates do |t|
      t.date :date,                    null: false
      t.bigint :user_id,               null: false

      t.timestamps
    end
    add_foreign_key :received_dates, :users, column: :user_id
  end
end

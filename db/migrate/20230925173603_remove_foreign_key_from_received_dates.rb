class RemoveForeignKeyFromReceivedDates < ActiveRecord::Migration[6.0]
  def change
    remove_reference :received_dates, :medication, foreign_key: true
  end
end

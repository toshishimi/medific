class RemoveForeignKeyFromMedication < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key(:medications, :received_date)
  end
end

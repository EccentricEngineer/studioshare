class RemoveColumnsFromReservation < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :start
    remove_column :reservations, :end
    add_column :reservations, :date, :date
  end
end

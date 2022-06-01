class RemoveVendorFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :vendor
  end
end

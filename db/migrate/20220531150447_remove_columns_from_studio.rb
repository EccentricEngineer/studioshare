class RemoveColumnsFromStudio < ActiveRecord::Migration[6.1]
  def change
    remove_column :studios, :country
    remove_column :studios, :city
    remove_column :studios, :longitude
    remove_column :studios, :latitude
    remove_column :studios, :capacity
    remove_column :studios, :mixing_console
    remove_column :studios, :multitrack_recorder
    remove_column :studios, :microphones
    remove_column :studios, :reference_monitor
    remove_column :studios, :digital_workstation
    remove_column :studios, :music_workstation
    remove_column :studios, :outboard_effect
    remove_column :studios, :isolation_booth
    add_column :studios, :price, :integer
  end
end

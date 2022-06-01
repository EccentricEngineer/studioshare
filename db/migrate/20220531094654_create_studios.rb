class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.references :user, null: false, foreign_key: true
      t.text :name
      t.text :country
      t.text :city
      t.text :address
      t.integer :longitude
      t.integer :latitude
      t.integer :capacity
      t.boolean :mixing_console
      t.boolean :multitrack_recorder
      t.boolean :microphones
      t.boolean :reference_monitor
      t.boolean :digital_workstation
      t.boolean :music_workstation
      t.boolean :outboard_effect
      t.boolean :isolation_booth
      t.integer :photo_url
      t.timestamp :opening_hour
      t.timestamp :closing_hour

      t.timestamps
    end
  end
end

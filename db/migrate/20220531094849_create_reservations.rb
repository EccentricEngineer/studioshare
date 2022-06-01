class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :studio, null: false, foreign_key: true
      t.timestamp :start
      t.timestamp :end
      t.text :status

      t.timestamps
    end
  end
end

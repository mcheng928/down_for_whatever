class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :event_id
      t.integer :guest_id

      t.timestamps

    end
  end
end

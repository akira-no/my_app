class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.references :item
      t.datetime :start_time

      t.timestamps
    end
  end
end

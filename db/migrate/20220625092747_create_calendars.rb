class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.datetime   :start_time,  null: false
      t.references :user,        null: false, foreign_key: true

      t.timestamps
    end
  end
end

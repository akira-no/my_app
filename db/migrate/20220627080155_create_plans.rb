class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string     :category
      t.string     :item,       null: false
      t.datetime   :start_time  null: false
      t.references :user,       null: false, foreign_key: true

      t.timestamps
    end
  end
end

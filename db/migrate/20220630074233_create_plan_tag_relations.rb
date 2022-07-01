class CreatePlanTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :plan_tag_relations do |t|
      t.references :plan,     foreign_key: true
      t.references :tag,      foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

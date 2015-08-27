class CreateFlaggings < ActiveRecord::Migration
  def change
    create_table :flaggings do |t|
      t.string :flaggable_type
      t.integer :flaggable_id
      t.string :flagger_type
      t.string :flaggable_id
      t.string :flag

      t.timestamps null: false
    end
  end
end

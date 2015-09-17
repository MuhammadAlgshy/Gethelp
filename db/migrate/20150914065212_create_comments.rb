class CreateComments < ActiveRecord::Migration

	drop_table :comments
  def change
    create_table :comments do |t|
      t.integer :status_id
      t.text :content

      t.timestamps null: false
    end
    add_index :comments, :status_id
  
  end
end

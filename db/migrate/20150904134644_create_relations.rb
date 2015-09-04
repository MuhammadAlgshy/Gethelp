class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
    		t.integer :user_id
    		t.integer :group_id
    		t.timestamps null: false
end
    		add_index :relations , :user_id
    		add_index :relations , :group_id
  
    
  end
end

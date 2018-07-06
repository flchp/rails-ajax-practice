class CreateSorts < ActiveRecord::Migration[5.0]
  def change
    create_table :sorts do |t|
      t.string :name
      t.timestamps
    end
    add_column :posts, :sort_id, :integer
    add_index :posts, :sort_id 
  end
end

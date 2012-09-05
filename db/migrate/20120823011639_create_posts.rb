class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :topic_id
      t.text :body
      t.integer :position
      t.integer :created_by_id

      t.timestamps
    end
  end
end

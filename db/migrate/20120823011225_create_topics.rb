class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :subject
      t.integer :board_id
      t.integer :created_by_id

      t.timestamps
    end
  end
end

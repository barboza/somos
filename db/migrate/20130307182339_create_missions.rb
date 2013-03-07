class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :title
      t.text :description
      t.references :user
      t.references :category
      t.integer :goal
      t.text :closing_message
      t.datetime :acomplished_at
      t.datetime :closed_at
      t.string :image

      t.timestamps
    end
    add_index :missions, :user_id
    add_index :missions, :category_id
  end
end

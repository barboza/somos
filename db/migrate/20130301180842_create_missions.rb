class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.references :user
      t.string :title
      t.text :description
      t.boolean :acomplished
      t.text :result_description
      t.datetime :acomplished_at
      t.datetime :closed_at
      t.string :image

      t.timestamps
    end
  end
end

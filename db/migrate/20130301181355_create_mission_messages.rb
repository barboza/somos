class CreateMissionMessages < ActiveRecord::Migration
  def change
    create_table :mission_messages do |t|
      t.references :mission
      t.references :user
      t.text :contents

      t.timestamps
    end
  end
end

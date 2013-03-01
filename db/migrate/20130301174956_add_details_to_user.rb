class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :document_number, :string
    add_column :users, :landline, :string
    add_column :users, :mobile_phone, :string
    add_column :users, :gender, :string
  end
end

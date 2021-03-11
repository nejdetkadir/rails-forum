class AddUsernameAndFullnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, unique: true, null: false, default: ""
    add_column :users, :fullname, :string, null: false, default: ""
  end
end

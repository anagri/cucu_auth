class AddAuthlogicColumnsToUserTable < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :email, :string
    add_column :users, :crypted_password, :string
    add_column :users, :password_salt, :string
    add_column :users, :persistence_token, :string
  end

  def self.down
    drop_column :users, :username
    drop_column :users, :email
    drop_column :users, :crypted_password
    drop_column :users, :password_salt
    drop_column :users, :persistence_token
  end
end

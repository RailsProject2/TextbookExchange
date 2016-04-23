class AddAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :adminpassword, :string
  end
end

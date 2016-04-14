class AddContactToUsers < ActiveRecord::Migration
  def change
    create_table :user_info do |t|
      t.string :phone
      t.string :facebook
    end
  end
end

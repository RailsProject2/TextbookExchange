class AddContactToUser < ActiveRecord::Migration
  def change
    create_table :user_contact_info do |t|
      t.string :name
      t.string :phone
      t.string :facebook
    end
  end
end

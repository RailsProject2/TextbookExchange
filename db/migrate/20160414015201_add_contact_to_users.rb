class AddContactToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.string :phone
      t.string :facebook
    end
  end
end

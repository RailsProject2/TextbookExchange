class CreateBuyPosts < ActiveRecord::Migration
  def change
    create_table :buy_posts do |t|
      t.string :name
      t.string :isbn
      t.string :class_name
      t.integer :class_number
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :buy_posts, :users
  end
end

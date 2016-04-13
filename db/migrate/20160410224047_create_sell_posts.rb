class CreateSellPosts < ActiveRecord::Migration
  def change
    create_table :sell_posts do |t|
      t.string :name
      t.string :isbn
      t.string :class_name
      t.string :class_number
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :sell_posts, :users
  end
end

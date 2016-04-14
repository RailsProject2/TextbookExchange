class AddPriceToSell < ActiveRecord::Migration
  def change
  	change_table :sell_posts do |t|
  		t.integer :price
  	end
  end
end

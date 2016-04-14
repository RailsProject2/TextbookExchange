class AddPriceToBuy < ActiveRecord::Migration
  def change
  	change_table :buy_posts do |t|
  		t.integer :price
	end
  end
end

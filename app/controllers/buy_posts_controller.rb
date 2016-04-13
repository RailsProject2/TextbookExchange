class BuyPostsController < ApplicationController
	
	def index
		@buy_posts = BuyPost.all
	end

	def new
		@buy_post = BuyPost.new
	end

	def create 
		@buy_post = BuyPost.new post_params
		@buy_post.user = current_user
		@buy_post.save
		redirect_to action: 'index'
	end

private
	def post_params
		params.require(:buy_post).permit(:name, :isbn)
	end


end

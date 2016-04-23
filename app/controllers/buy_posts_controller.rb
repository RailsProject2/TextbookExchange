class BuyPostsController < ApplicationController
	
	def index
		@buy_posts = BuyPost.order(:price)
	end

	def new
		@buy_post = BuyPost.new
	end

	def create 
		@buy_post = BuyPost.new post_params
		@buy_post.user = current_user
		@buy_post.save
		redirect_to users_show_path
	end

	def destroy
		BuyPost.find(params[:id]).destroy
		redirect_to users_show_path
	end

	def sort
		@buy_posts = BuyPost.where(isbn: params[:id])
	end


private
	def post_params
		params.require(:buy_post).permit(:name, :isbn, :price)
	end


end

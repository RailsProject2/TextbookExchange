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
		redirect_to action: 'index'
	end

	def sort
		if BuyPost.where(name: params[:id]) != []
			@buy_posts = BuyPost.where(name: params[:id])
		else
			@buy_posts = BuyPost.where(isbn: params[:id])
		end

	end

	def destroy
        @buypost = BuyPost.find_by_id(params[:id])

        if @buypost.destroy
            redirect_to action: "index"
        end
    end


private
	def post_params
		params.require(:buy_post).permit(:name, :isbn, :price)
	end


end

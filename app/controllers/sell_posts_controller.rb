class SellPostsController < ApplicationController
    def index
        @sell_posts = SellPost.all
    end

    def new
        @sell_post = SellPost.new
    end

    def create 
        @sell_post = SellPost.new post_params
        @sell_post.user = current_user
        @sell_post.save
        redirect_to action: 'index'
    end

private
    def post_params
        params.require(:sell_post).permit(:name, :isbn, :price)
    end
end

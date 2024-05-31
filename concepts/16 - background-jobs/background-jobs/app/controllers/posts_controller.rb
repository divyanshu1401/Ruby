class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new()
    end

    def create
        ContentPublisherJob.perform_later(post_params)
        redirect_to root_path
    end

    private
    def post_params
        params.require(:post).permit(:title, :text)
    end
end
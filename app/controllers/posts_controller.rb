class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	respond_to :html, :js

	def index
		@posts = Post.all
	end

	def update
		@post.update(post_params)
	end

	def destroy
		@post.destroy
	end

	def edit
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :description)
	end

end

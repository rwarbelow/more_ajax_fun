class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	respond_to :html, :js

	def index
		@posts = Post.all.sort { |a, b| a.id <=> b.id }
	end

	def update
		@post.update(post_params)
	end

	def destroy
		@post.destroy
		Post.create(title: "A new post!", description: "A little description.")
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

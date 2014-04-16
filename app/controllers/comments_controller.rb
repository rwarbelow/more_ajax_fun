class CommentsController < ApplicationController
	def index
		@comments = Comment.all.sort { |a, b| a.id <=> b.id }
	end
	def edit
		@comment = Comment.find(params[:id])
		render :layout => false
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update(comment_params)
		respond_to do |format|
			format.html { redirect_to :root }
			format.js
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:text)
	end
end

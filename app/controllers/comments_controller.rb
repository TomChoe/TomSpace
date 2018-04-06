class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to ('/posts')
			render json: {message:'ok'}
		end
		
	end

	private

	def comment_params
		params.require(:comment).permit(:user_id, :post_id, :body)
	end
end
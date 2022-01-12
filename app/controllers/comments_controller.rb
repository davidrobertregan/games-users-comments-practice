class CommentsController < ApplicationController 

    def index 
        render json: Comment.all
    end

    def show 
        comment = Comment.find_by(id: params[:id])
        if comment
            render json: comment
        else
            render json: {error: "Comment not found"}, status: :not_found
        end
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        if comment
            comment.destroy
            head :no_content
        else
            render json: { error: "Comment not found"}, status: :not_found
        end
    end
end

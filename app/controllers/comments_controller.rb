class CommentsController < ApplicationController 
    before_action :find_comment, except: [:index, :create]
    
    def index 
        render json: Comment.all
    end

    def show 
        render json: @comment
    end

    def destroy
        @comment.destroy
        head :no_content
    end

    def update 
        @comment.update(comment_params)
        render json: @comment, status: :ok
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment, status: :created
    end

    def comment_params
        params.permit(:content, :game_id, :user_id)
    end

    def find_comment
        @comment = Comment.find_by(id: params[:id])
        render json: { error: "Comment not found"}, status: :not_found unless @comment
    end
end

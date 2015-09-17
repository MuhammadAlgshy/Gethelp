class CommentsController < ApplicationController
  
  def index

    @user =  User.all

    @statuses = Status.all

    @comment = Comment.all

  end

 def create 

    @status = Status.find(params[:status_id])
    
    @comment = @status.comments.create(comment_params)

    @comment.user = current_user

    respond_to do |format|

      if @comment.save

        format.html {redirect_to @status, notice: 'Comment was successfully created'}
        format.json {render json: @comment, status: :created, location: @comment}

      else

        format.html {render action: "new"}
        format.json {render json: @comment.errors, status: :unprocessable_entity}

      end
    end
  end

  def comment_params

      params.require(:comment).permit(:content, :status_id, :user_id)

  end

end

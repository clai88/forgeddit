class CommentsController < ApplicationController
  def index
    @links = Link.all
    @current_post = Link.find_by(title: params["title"])
    @comments = @current_post.comments
  end

  def new
    # unless current_user
    #   redirect_to "/"
    #   return
    # end
    @new_comment = Comment.new
  end

  def create

    @current_link = Link.find_by(title: params["title"])

    @current_comment = Comment.create(body: params["comment"]["body"])
    @current_comment.update(link_id: @current_link.id)

    redirect_to "/links/#{@current_link.title}/comments"
  end

  private def comment_params
    params.require("comment").permit(:body, :link_id)
  end

end

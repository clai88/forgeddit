class CommentsController < ApplicationController
  def index
    @links = Link.all
    @current_post = Link.find_by(title: params["title"])
    @comments = @current_post.comments
  end

  def new
    @new_comment = Comment.new
  end

  def create
    @current_link = Link.find_by(title: params["title"])
    @current_comment = Comment.create
    @curren_comment.create(body: params["body"])
    @current_comment.update(link_id: @current_link.id)

    redirect_to "/links/#{@current_link.title}/comments"
  end
end

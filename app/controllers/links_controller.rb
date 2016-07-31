class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def show
    @link = Link.find(params["id"])
  end

  def new
    unless current_user
      render :you_must_login_to_post_links
      return
    end
    @new_link = Link.new

    # redirect_to "/links"
  end

  def create
    @link = Link.create(link_params)
    @link.update(vote_count: 0)

    redirect_to "/links/#{@link.id}"
  end

  private def link_params
    params.require("link").permit(:title, :url, :vote_count)
  end
end

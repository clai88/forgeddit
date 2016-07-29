class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def show
    @link = Link.find(params["id"])
  end

  def new
    @new_link = Link.new

    # redirect_to "/links"
  end

  def create
    @link = Link.create(link_params)

    redirect_to "/links/#{@link.id}"
  end

  private def link_params
    params.require("link").permit(:title, :url)
  end
end

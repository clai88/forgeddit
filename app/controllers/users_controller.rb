class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.sign_up(params["user"]["email"])
    @user.update(name: params["user"]["full_name"])

    if @user.valid?
      redirect_to(links_path)
    else
      render :new
    end
  end
end


# unless current_user
#   redirect_to login_path
#   return
# end

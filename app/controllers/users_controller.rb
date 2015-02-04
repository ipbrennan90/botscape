class UsersController < ApplicationController
  def index
    @botscapers=User.all
  end

  def new
    @botscaper=User.new
  end

  def create
    User.create(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :user, :email, :password)
  end

end

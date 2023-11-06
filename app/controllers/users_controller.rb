class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    user_data = User.find(current_user.id)
    #user_data = User.find(params[:id])
    @profile_data = [
        "user_data" => [user_data][0],
      ]
  end

  def new
  end

  def edit
    @user_data = User.find(current_user.id)
    #user_data = User.find(params[:id])
    @profile_data = [
        "user_data" => [@user_data][0],
      ]
  end

  def update
    #byebug
    @user_data = User.find(current_user.id)
    @user_data.update(user_params)
    redirect_to user_path(current_user)
  end

  def leave
      @user_data = User.find(current_user.id)
  end
  
  private
  def user_params
   params.require(:user).permit(:name, :email, :telephone_number, :history)
  end
end

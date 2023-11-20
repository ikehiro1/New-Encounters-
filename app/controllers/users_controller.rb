class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    if current_user.present?
      @user_data = User.find(params[:id])
    else
      redirect_to new_user_session_path
    end 
    #@user = User.find(params[:id])
    #@followings = @user.followings
    #@followers = @user.followers
    
  end

  def new
  end

  def edit
    @user_data = User.find(current_user.id)
    @profile_data = [
    "user_data" => [@user_data][0],
    ]
  end

  def update
    @user_data = User.find(current_user.id)
    @user_data.update(user_params)
    #byebug
    redirect_to user_path(current_user)
  end

  def leave
    @user_data = User.find(current_user.id)
  end
  
  def destroy
    @user_data = User.find(current_user.id)
    @user_data.destroy
    redirect_to new_user_registration_path
  end
  
  def follows
    user = User.find(params[:id])
    @users = user.following_users
  end
  
  def followers
    user = User.find(params[:id])
    @user = user.follower_users
  end
  private
  def user_params
   params.require(:user).permit(:name, :email, :telephone_number, :history, :user_img)
  end
end

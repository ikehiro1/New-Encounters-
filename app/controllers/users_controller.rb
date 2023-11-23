class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    if current_user.present?
      @user_data = User.find(current_user.id)
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
    begin
      @user_data = User.find(current_user.id)
      @profile_data = [
      "user_data" => [@user_data][0],
      ]
    rescue
      redirect_to user_path(current_user.id)
    end
  end

  def update
    begin
      @user_data = User.find(current_user.id)
      if @user_data.update(user_params)
         redirect_to user_path(current_user.id)
      else
       render 'edit'
      end 
    rescue
      redirect_to user_path(current_user.id)
    end
  end

  def leave
    begin
      @user_data = User.find(current_user.id)
    rescue
      redirect_to user_path(current_user.id)
    end
  end
  
  def destroy
    begin
      @user_data = User.find(current_user.id)
      @user_data.destroy
      redirect_to new_user_registration_path
    rescue
      redirect_to user_path(current_user.id)
    end
  end
  
  def follows
    begin
      user = User.find(params[:id])
      @users = user.following_users
    rescue
      redirect_to user_path(current_user.id)
    end
  end
  
  def followers
    begin
      user = User.find(params[:id])
      @user = user.follower_users
    rescue
      redirect_to user_path(current_user.id)
    end
  end  
  private
  def user_params
   params.require(:user).permit(:name, :email, :telephone_number, :history, :user_img)
  end
end

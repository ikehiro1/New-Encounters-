class MyPrsController < ApplicationController
  def index
    #user.find(params[:id])
    @user_data = User.find(current_user.id)
    @profile_data = [
    "user_data" => [@user_data][0],
    ]
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

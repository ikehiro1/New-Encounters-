class UsersController < ApplicationController
  def show
    user_data = User.find(params[:id])
    @profile_data = [
        "user_data" => [user_data][0],
      ]
  end

  def new
  end

  def edit
  end

  def update
  end

  def leave
  end
end

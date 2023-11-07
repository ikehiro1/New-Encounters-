class AnnouncesController < ApplicationController
  def index
    user_data = User.find(current_user.id)
    #user_data = User.find(params[:id])
    @profile_data = [
        "user_data" => [user_data][0],
      ]
  end

  def index_all
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

class AnnouncesController < ApplicationController
  def index
    user_data = User.find(current_user.id)
    #user_data = User.find(params[:id])
    @profile_data = [
        "user_data" => [user_data][0],
      ]
  end

  def show
  end

  def new
    @announce = Announce.new
  end
  
  def create
    @announce = Announces.new(announces_params)
    @announce.save
    redirect_to announces_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def announces_params
    params.require(:announces).permit(:title, :explanation, :time, :img, :user_name).merge(user_id: current_user.id)
  end

end

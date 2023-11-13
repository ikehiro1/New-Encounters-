class AnnouncesController < ApplicationController
  def index
    @announces = Announce.all
    #byebug
  end

  def show
    @announce = Announce.find(params[:id])
  end

  def new
    @announce = Announce.new
    
  end
  
  def create
    @announce = Announce.new(announces_params)
    @announce.save
    redirect_to announces_path
  end

  def edit
    @announce = Announce.find(params[:id])
    @user = current_user.id
  end

  def update
    @announce = Announce.find(params[:id])
    @announce.update(announces_params)
    redirect_to announces_path
  end

  def destroy
     #byebug
     @announce = Announce.find(params[:announce_id])
     @announce.destroy
     redirect_to announces_path
  end
  
  private
  def announces_params
    params.require(:announce).permit(:title, :explanation, :time, :img, :user_name).merge(user_id: current_user.id)
  end

end

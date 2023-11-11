class AnnouncesController < ApplicationController
  def index
    @announces = Announce.all
    #byebug
  end

  def show
  end

  def new
    @announce = Announce.new
    
  end
  
  def create
    @announce = Announce.new(announces_params)
    @announce.save!
    #byebug
    redirect_to announces_path
  end

  def edit
    @announce = Announce.find(params[:id])
  end

  def update
    @announce = Announce.find(params[:id])
    @announce.update(announces_params)
    redirect_to announces_path
  end

  def destroy
     @announce = Announce.find(params[:id])
     @announce.destroy
     redirect_to announces_path
  end
  
  private
  def announces_params
    params.require(:announce).permit(:title, :explanation, :time, :img, :user_name).merge(user_id: current_user.id)
  end

end

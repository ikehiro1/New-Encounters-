class AnnouncesController < ApplicationController
  def index
    @announce = Announce.new
    @announces = Announce.all
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
  end

  def update
  end

  def destroy
  end
  
  private
  def announces_params
    params.require(:announce).permit(:title, :explanation, :time, :img, :user_name).merge(user_id: current_user.id)
  end

end

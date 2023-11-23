class AnnouncesController < ApplicationController
  def index
    begin
       @announces = Announce.all
    rescue
      redirect_to user_path(current_user.id)
    end
  end

  def show
    begin
      @announce = Announce.find(params[:id])
    rescue
      redirect_to announce_path
    end
  end

  def new
    begin
      @announce = Announce.new
    rescue
      redirect_to announce_path
    end
  end
  
  def create
    begin
      @announce = Announce.new(announces_params)
      @announce.save
      redirect_to announces_path
    rescue
      redirect_to announce_path
    end
  end

  def edit
    begin
      @announce = Announce.find(params[:id])
      @user = current_user.id
    rescue
      redirect_to announce_path
    end
  end

  def update
    begin
      @announce = Announce.find(params[:id])
      @announce.update(announces_params)
      redirect_to announces_path
    rescue
      redirect_to announce_path
    end
  end

  def destroy
   begin
     @announce = Announce.find(params[:id])
     @announce.destroy
     redirect_to announces_path
   rescue
      redirect_to edit_announce_path
   end  
  end
  
  
  private
  def announces_params
    params.require(:announce).permit(:title, :explanation, :time, :img, :user_name).merge(user_id: current_user.id)
  end

end

class CommunitiesController < ApplicationController
  def index
    begin
      @community = Community.new
      @communities = Community.all
    rescue
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    begin
      @community = Community.find(params[:id])
      @community.destroy
      redirect_to request.referer
    rescue
      redirect_to communities_path
    end
  end

  def create
    begin
      @community = Community.new(community_params)
      @community.save
      redirect_to communities_path
    rescue
      redirect_to communities_path
    end
  end  

  private
  def community_params
    params.require(:community).permit(:content).merge(user_id: current_user.id)
  end
end

class CommunitiesController < ApplicationController
  def index
    @community = Community.new
    @communities = Community.all
  end

  def show
  end

  def destroy
     @community = Community.find(params[:id])
     #byebug
     @community.destroy
     redirect_to request.referer
  end

  def create
    @community = Community.new(community_params)
    @community.save
    redirect_to communities_path
  end

  def update
  end
  
  private
  def community_params
    params.require(:community).permit(:content).merge(user_id: current_user.id)
  end
end

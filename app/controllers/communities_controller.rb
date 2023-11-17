class CommunitiesController < ApplicationController
  def index
    @community = Community.new
    @communities = Community.all
  end

  def show
  end

  def destroy
  end

  def create
    #byebug
    @community = Community.new(community_params)
    @community.save
    redirect_to communities_path
  end

  def update
  end
  
  private
  def community_params
    params.require(:community).permit(:content, :user_id)
  end
end

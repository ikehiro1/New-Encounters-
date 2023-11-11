class LikesController < ApplicationController
    def create
      @my_pr_like = Like.new(user_id: current_user.id, my_pr_id: params[my_pr_id])
      @my_pr_like.save
      redirect_to my_prs_path(params[:my_pr_id])
      #redirect_to request.referer
    end
    
    def destroy
      @my_pr_like = Like.find_by(user_id: current_user.id, my_pr_id: params[my_pr_id])
      @my_pr_like.destroy
      redirect_to my_prs_path(params[:my_pr_id])
    end
end

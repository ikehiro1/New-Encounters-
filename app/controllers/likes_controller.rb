class LikesController < ApplicationController
    def create
      my_pr = MyPr.find(params[:my_pr_id])
      @my_pr_like = current_user.likes.new(my_pr_id: my_pr.id)
      @my_pr_like.save
      redirect_to my_prs_path(my_pr)
    end
    
    def destroy
      my_pr = MyPr.find(params[:my_pr_id])
      @my_pr_like = current_user.likes.find_by(my_pr_id: my_pr.id)
     if @my_pr_like
      @my_pr_like.destroy
      redirect_to my_prs_path(my_pr)
     end
    end
end

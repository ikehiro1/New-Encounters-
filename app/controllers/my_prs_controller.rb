class MyPrsController < ApplicationController
  def index
    @video = MyPr.new
    @videos = MyPr.all
  end

  def show
  end

  def new
    @video = MyPr.new
  end
  
  def create
    @video = MyPr.new(mypr_params)
    @video.save
    redirect_to my_prs_path
  end

  def edit
    @video = MyPr.find(params[:id])
    #byebug
  end

  def update
    @video = MyPr.find(params[:id])
    @video.update(mypr_params)
    redirect_to my_prs_path
  end

  def destroy
     
     @video = MyPr.find(params[:my_pr_id])

     @video.destroy
     redirect_to my_prs_path
  end
  
  private
  def mypr_params
    params.require(:my_pr).permit(:pr_title, :pr_explanation, :pr_movie).merge(user_id: current_user.id)
  end
  
end

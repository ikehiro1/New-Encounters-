class MyPrsController < ApplicationController
def index
  begin
    @videos = MyPr.all
    @created_user_name = @videos.map { |video| video.user.name }
  rescue
    redirect_to user_path(current_user.id)
  end
end

  def new
    begin
      @video = MyPr.new
    rescue
      redirect_to my_prs_path
    end
  end
  
  def create
    begin
      @video = MyPr.new(mypr_params)
    if @video.save
       redirect_to my_prs_path
    else
      redirect_to request.referer
    end
    rescue
      redirect_to my_prs_path
    end
  end

  def edit
    begin
      @video = MyPr.find(params[:id])
    rescue
      redirect_to my_prs_path
    end
  end

  def update
    begin
      @video = MyPr.find(params[:id])
    if @video.update(mypr_params)
       redirect_to my_prs_path
    else
      redirect_to request.referer
    end  
    rescue
      redirect_to my_prs_path
    end
  end

  def destroy
    begin
       @video = MyPr.find(params[:id])
       @video.destroy
       redirect_to my_prs_path
    rescue
      redirect_to my_prs_path
    end
  end
  
  private
  def mypr_params
    params.require(:my_pr).permit(:pr_title, :pr_explanation, :pr_movie).merge(user_id: current_user.id)
  end
  
end

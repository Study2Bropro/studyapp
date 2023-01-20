class StudiesController < ApplicationController

  def index
    @studies = Study.all
    @study = Study.new
  end

  def show
    @study = Study.find(params[:id])
  end

  def edit
    @study = Study.find(params[:id])
  end

  def create
    @study = Study.new(study_params)
    if @study.save
      redirect_to studies_path
    else 
      @studies = Study.all
      render "index"
    end
  end

  def destroy
    study = Study.find(params[:id])
    study.destroy
    redirect_to studies_path
  end

  def update
    @study = Study.find(params[:id])
    if @study.update(study_params)
      redirect_to studies_path
    else 
      render "edit"
    end
  end

  private

  def study_params
    params.require(:study).permit(:title,:content,:start_time)
  end

end

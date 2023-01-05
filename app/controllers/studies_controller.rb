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
    @study.save
    redirect_to studies_path
  end

  def destroy
    study = Study.find(params[:id])
    study.destroy
    redirect_to studies_path
  end

  def update
    @study = Study.find(params[:id])
    @study.update(study_params)
    redirect_to studies_path
  end

  private

  def study_params
    params.require(:study).permit(:title,:content,:date,:start_time,:end_time)
  end

end

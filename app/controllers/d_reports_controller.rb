class DReportsController < ApplicationController
  def new
    @d_reports = DReport.all
    @d_report = DReport.new
  end

  def index
    @d_reports = DReport.all
  end
  
  def show
    @d_report = DReport.find(params[:id])
  end

    def create
      @d_report = DReport.new(d_report_params)
      if @d_report.save
        redirect_to d_reports_path(@d_report.id)
      else
        @d_reports = DReport.all
        render "index"
      end
    end

  private

  def d_report_params
    params.require(:d_report).permit(:title,:content,:date)
  end
end

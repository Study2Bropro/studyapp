class WReportsController < ApplicationController
  def new
    @w_reports = WReport.all
    @w_report = WReport.new
  end
  
  def index
    
  end


  private

  def reports
    params.require(:w_report).permit(:title,:content,:date)
  end
end

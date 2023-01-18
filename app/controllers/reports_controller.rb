class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def index
  end

  def dairy
  end

  def weekly
  end

  private

  def reports
    params.require(:report).permit(:title,:content,:date)
  end
end
class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
  end

  def new
    @report = Report.new
  end

  def edit
  end

  def create
    related_employee = Employee.find_by(private_number: params["report"]["private_number"].to_i)
    @report = Report.new
    @report.employee =  related_employee

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Report was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
end

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

    if params[:commit] == 'Check-in'
      @report.check = 'Check in'
    elsif params[:commit] == 'Check-out'
      @report.check = 'Check out'
    end
    @report.employee =  related_employee
    
    respond_to do |format|
      if @report.save
        format.html { redirect_to new_report_path, notice: 'Report was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def attendance
    @dates = Report.all.pluck("distinct date(created_at)")
  end
end

class EmployeesController < ApplicationController

  before_action :current_employee, only: [:show, :edit, :update]
  before_action :validate_private_num, only: [:create]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid? 
      @employee.save!
      redirect_to employees_path
    else 
      redirect_to new_employee_path, alert: 'Private number already exist'
    end
  end

  def edit
  end

  def update
    respond_to do |format| 
      if @employee.update(employee_params) 
        format.html { redirect_to employees_url, notice: 'Employee was successfully updated.' } 
      else 
        format.html { render :edit } 
      end 
    end 
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email, :position, :private_number, :status)
  end

  def current_employee
    @employee = Employee.find(params[:id])
  end

  def validate_private_num
    @pnumber = params[:private_number]
    if Employee.exists?(private_number: @pnumber) == true 
      flash[:alert] = "Private number already exist"
    end
  end

end

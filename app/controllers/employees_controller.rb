class EmployeesController < ApplicationController

  before_action :current_employee, only: [:show, :edit, :update]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.create(employee_params)

    redirect_to employees_path, notice: "Employee was successfully created."
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee), info: "Employee was successfully updated." 
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email, :position, :private_number, :status)
  end

  def current_employee
    @employee = Employee.find(params[:id])
  end
end

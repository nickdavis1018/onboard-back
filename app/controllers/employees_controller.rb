class EmployeesController < ApplicationController
  before_action :authorized, :set_employee, only: [:show]

  # GET /employees
  def index
    @employees = Employee.all
    render json: @employees
  end

  # GET /employees/1
  def show
    render json: @employee
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render json: @employee, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/1
  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/1
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_params
      params.require(:employee).permit(:name, :title, :office, :team, :departing, :onboarding, :trained, :access, :equipment, :remote, :notes, :hire_date, :term_date, :img, :id, :manager, :assignee)
    end
end

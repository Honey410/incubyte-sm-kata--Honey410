class Api::V1::EmployeesController < ApplicationController
  before_action :set_employee, only: %i[ show update destroy ]

  # GET /employees
  def index
    render json: Employee.all
  end

  # GET /employees/:id
  def show
    render json: @employee
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/:id
  def update
    if @employee.update(employee_params)
      render json: @employee, status: :ok
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/:id
  def destroy
    @employee.destroy

    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Employee not found" }, status: :not_found
  end

  # Only allow a list of trusted parameters through.
  def employee_params
    params.require(:employee).permit(:full_name, :job_title, :country, :salary)
  end
end

class Api::V1::SalaryCalculationsController < ApplicationController
  def show
    employee = Employee.find(params[:employee_id])
    result = SalaryCalculator.new(employee).call

    render json: result
  end
end

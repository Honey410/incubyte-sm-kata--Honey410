class Api::V1::SalaryMetricsController < ApplicationController
  def by_country
    employees = Employee.where(country: params[:country])

    render json: {
      min: employees.minimum(:salary)&.to_f,
      max: employees.maximum(:salary)&.to_f,
      average: employees.average(:salary)&.to_f
    }
  end

  def by_job_title
    employees = Employee.where(job_title: params[:job_title])

    render json: {
      average: employees.average(:salary)&.to_f
    }
  end
end

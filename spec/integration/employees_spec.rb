require 'swagger_helper'

RSpec.describe 'Employees API', type: :request do
  path '/api/v1/employees' do
    post 'Creates an employee' do
      tags 'Employees'
      consumes 'application/json'
      produces 'application/json'

      parameter name: :employee, in: :body, schema: {
        type: :object,
        properties: {
          full_name: { type: :string },
          job_title: { type: :string },
          country: { type: :string },
          salary: { type: :number }
        },
        required: %w[full_name job_title country salary]
      }

      response '201', 'employee created' do
        let(:employee) do
          {
            full_name: "John",
            job_title: "Dev",
            country: "India",
            salary: 1000
          }
        end

        run_test!
      end
    end
  end

  path '/api/v1/salary_calculation/{employee_id}' do
    get 'Calculates salary' do
      tags 'Salary'
      produces 'application/json'

      parameter name: :employee_id, in: :path, type: :integer

      response '200', 'salary calculated' do
        let(:employee) { create(:employee) }
        let(:employee_id) { employee.id }

        run_test!
      end
    end
  end

  path '/api/v1/salary_metrics/country' do
    get 'Country salary metrics' do
      tags 'Metrics'
      parameter name: :country, in: :query, type: :string

      response '200', 'metrics returned' do
        let(:country) { "India" }
        run_test!
      end
    end
  end
end

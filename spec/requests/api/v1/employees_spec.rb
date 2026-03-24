# spec/requests/employees_spec.rb
require 'rails_helper'

RSpec.describe 'Employees API', type: :request do
  it 'creates employee' do
    post '/api/v1/employees', params: {
      employee: {
        full_name: 'John',
        job_title: 'Dev',
        country: 'India',
        salary: 50000
      }
    }

    expect(response.status).to eq(201)
  end
end

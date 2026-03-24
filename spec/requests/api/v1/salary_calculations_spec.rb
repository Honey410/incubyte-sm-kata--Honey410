require 'rails_helper'

RSpec.describe "Salary Calculation", type: :request do
  it "calculates salary for India" do
    employee = create(:employee, country: "India", salary: 1000)

    get "/api/v1/salary_calculation/#{employee.id}"

    json = JSON.parse(response.body)

    expect(json["deduction"]).to eq(100.0)
    expect(json["net_salary"]).to eq(900.0)
  end
end
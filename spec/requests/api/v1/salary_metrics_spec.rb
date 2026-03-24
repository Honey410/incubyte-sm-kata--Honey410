require 'rails_helper'

RSpec.describe "Salary Metrics", type: :request do
  it "returns country metrics" do
    create(:employee, country: "India", salary: 1000)
    create(:employee, country: "India", salary: 2000)

    get "/api/v1/salary_metrics/country", params: { country: "India" }

    json = JSON.parse(response.body)

    expect(json["min"]).to eq(1000.0)
    expect(json["max"]).to eq(2000.0)
    expect(json["average"]).to eq(1500.0)
  end
end
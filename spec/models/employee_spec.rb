require 'rails_helper'

RSpec.describe Employee, type: :model do
  it 'is invalid without full_name' do
    employee = Employee.new(full_name: nil)
    expect(employee).not_to be_valid
  end
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:job_title) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:salary) }
end

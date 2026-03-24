class SalaryCalculator
  def initialize(employee)
    @employee = employee
  end

  def call
    gross = @employee.salary
    deduction= calculate_deduction(gross)
    net = gross - deduction 

    {
      gross_salary: gross.to_f,
      deduction: deduction.to_f,
      net_salary: net.to_f
    }
  end

  private
  def calculate_deduction(gross)
    case @employee.country.downcase
    when 'united states'
      gross * 0.12
    when 'india'
      gross * 0.10
    else
      0
    end
  end
end
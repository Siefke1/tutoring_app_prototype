require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  test "save an employee without name" do
    employee = Employee.new
    assert_not employee.save
  end

  test "save an employee with name" do
    employee = Employee.new(name: "Hans Zimmer")
    assert employee.save
  end
end

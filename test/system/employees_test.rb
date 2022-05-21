require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  test "visiting the new employee page" do
    visit new_employee_path

    assert_selector "label", text: "Name"
  end

  test "visiting employees index" do
    visit employees_path

    assert_selector "a.text-center"
  end
end

require "test_helper"

class SkillsetTest < ActiveSupport::TestCase
  test "save a skillset without expertise" do
    skillset = Skillset.new
    assert_not skillset.save
    p skillset.errors.messages
  end

  test "save a skillset with invalid expertise" do
    employee = Employee.create(id: 1, name: "Hans Zimmer")
    skillset = Skillset.new(employee_id: 1, expertise: "Fishing")
    assert_not skillset.save
    p skillset.errors.messages
  end

  test "save a skillset with valid expertise" do
    employee = Employee.create(id: 1, name: "Hans Zimmer")
    skillset = Skillset.new(employee_id: 1, expertise: "Coding")
    assert skillset.save
    p skillset.errors.messages
  end

  test "save sasme skillset twice" do
    employee = Employee.create(id: 1, name: "Hans Zimmer")
    skillset = Skillset.new(employee_id: 1, expertise: "Coding")
    skillset_two = Skillset.new(employee_id: 1, expertise: "Coding")
    assert_not (skillset.save && skillset_two.save)
    p skillset_two.errors.messages
  end
end

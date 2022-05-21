class SkillsetsController < ApplicationController
  def create
    @skillset = Skillset.new(skillset_params)
    @employee = Employee.find(params[:employee_id])
    @skillset.employee = @employee

    if @skillset.save
      redirect_to employee_path(@employee)
    else
      render "employees/show"
    end
  end

  private

  def skillset_params
    params.require(:skillset).permit(:expertise)
  end
end

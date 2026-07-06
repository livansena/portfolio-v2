class Admin::SkillsController < ApplicationController
  def index
    @skills = Skill.ordered
  end

  def new
    @skill = Skill.new
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      redirect_to admin_skills_path, notice: "Skill created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @skill = Skill.find(params[:id])

    if @skill.update(skill_params)
      redirect_to admin_skills_path, notice: "Skill updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    redirect_to admin_skills_path, notice: "Skill deleted successfully."
  end

  private

  def skill_params
    params.require(:skill).permit(
      :title,
      :category,
      :description,
      :proficiency,
      :display_order,
      :published,
      :icon
    )
  end
end
class Admin::ProjectsController < ApplicationController

  def index
    @projects = Project.order(:position)
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to admin_projects_path, notice: "Project created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  @project = Project.find(params[:id])

  if @project.update(project_params)
    redirect_to admin_projects_path, notice: "Project updated successfully."
  else
    render :edit, status: :unprocessable_entity
    end
  end

def destroy
  @project = Project.find(params[:id])
  @project.destroy

  redirect_to admin_projects_path, notice: "Project deleted successfully."
end

  private

  def project_params
    params.require(:project).permit(
      :title,
      :slug,
      :description,
      :image,
      :github_url,
      :demo_url,
      :featured,
      :position
    )
  end

end
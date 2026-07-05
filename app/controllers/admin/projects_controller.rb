class Admin::ProjectsController < ApplicationController

  def index
  @projects = Project
                .includes(:technologies, image_attachment: :blob)
                .order(:position)
end

  def new
    @project = Project.new
    @technologies = Technology.order(:name)
  end

  def edit
    @project = Project.find(params[:id])
    @technologies = Technology.order(:name)
  end

  def create
    @project = Project.new(project_params)
    @technologies = Technology.order(:name)

    if @project.save
      redirect_to admin_projects_path, notice: "Project created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @project = Project.find(params[:id])
    @technologies = Technology.order(:name)

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

  def remove_image
  @project = Project.find(params[:id])

  @project.image.purge if @project.image.attached?

  redirect_to edit_admin_project_path(@project),
              notice: "Image removed successfully."
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
      :position,
      technology_ids: []
    )
  end

end
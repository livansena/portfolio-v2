class Admin::TechnologiesController < ApplicationController

  def index
    @technologies = Technology.order(:name)
  end

  def new
    @technology = Technology.new
  end

  def edit
    @technology = Technology.find(params[:id])
  end

  def create
    @technology = Technology.new(technology_params)

    if @technology.save
      redirect_to admin_technologies_path,
                  notice: "Technology created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @technology = Technology.find(params[:id])

    if @technology.update(technology_params)
      redirect_to admin_technologies_path,
                  notice: "Technology updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @technology = Technology.find(params[:id])
    @technology.destroy

    redirect_to admin_technologies_path,
                notice: "Technology deleted successfully."
  end

  private

  def technology_params
    params.require(:technology).permit(:name)
  end

end
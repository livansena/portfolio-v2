class Admin::AboutsController < ApplicationController

  def index
    @abouts = About.all
  end

  def new
    redirect_to edit_admin_about_path(About.first)
  end

  def create
    redirect_to admin_abouts_path
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])

    if @about.update(about_params)
      redirect_to admin_abouts_path,
                  notice: "About updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    redirect_to admin_abouts_path
  end

  private

  def about_params
    params.require(:about).permit(
      :tag,
      :title_line_1,
      :title_line_2,
      :title_line_3,
      :description,
      :highlight_1,
      :highlight_2,
      :highlight_3,
      :highlight_4,
      :image,
      :status
    )
  end

end
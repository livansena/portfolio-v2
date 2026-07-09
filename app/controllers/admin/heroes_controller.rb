class Admin::HeroesController < ApplicationController

  def index
  hero = Hero.first

  redirect_to edit_admin_hero_path(hero)
  end

  def new
    redirect_to edit_admin_hero_path(Hero.first)
  end

  def create
    redirect_to admin_heroes_path
  end

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])

    if @hero.update(hero_params)
      redirect_to admin_heroes_path,
                  notice: "Hero updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy

    redirect_to admin_heroes_path,
                notice: "Hero deleted successfully."
  end

  private

  def hero_params
  params.require(:hero).permit(
    :hero_tag,
    :title_line_1,
    :title_line_2,
    :title_highlight,
    :description,
    :primary_button_text,
    :primary_button_url,
    :secondary_button_text,
    :secondary_button_url,
    :image,
    :resume,
    :status
  )
end

end
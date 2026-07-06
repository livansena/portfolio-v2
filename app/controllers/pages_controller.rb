class PagesController < ApplicationController

  def home
    @hero = Hero.find_by(status: "published")
    @projects = Project.where(featured: true).order(:position)
    @about = About.find_by(status: "published")
    @skills = Skill.published.ordered
  end

end
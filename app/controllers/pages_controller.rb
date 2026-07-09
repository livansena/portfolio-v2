class PagesController < ApplicationController

  def home
    @hero = Hero.find_by(status: "published")
    @projects = Project.where(featured: true).order(:position)
    @about = About.find_by(status: "published")
    @skills = Skill.published.ordered
    @contact = Contact.find_by(status: "published")
  end

def turbo_test
  flash.now[:notice] = "Turbo funcionando!"

  respond_to do |format|
    format.turbo_stream
  end
end

end


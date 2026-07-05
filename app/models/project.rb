class Project < ApplicationRecord
  has_one_attached :image

  has_many :project_technologies, dependent: :destroy
  has_many :technologies, through: :project_technologies

  before_validation :generate_slug

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :description, presence: true
  validates :position, presence: true

  private

  def generate_slug
    self.slug = title.to_s.parameterize if slug.blank?
  end
end
class Project < ApplicationRecord
  has_one_attached :image

  has_many :project_technologies, dependent: :destroy
  has_many :technologies, through: :project_technologies
end
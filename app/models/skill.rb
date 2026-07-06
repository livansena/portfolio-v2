class Skill < ApplicationRecord
  has_one_attached :icon

  validates :title, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :display_order, presence: true

  validates :proficiency,
            presence: true,
            numericality: {
              greater_than_or_equal_to: 0,
              less_than_or_equal_to: 100
            }

  scope :published, -> { where(published: true) }
  scope :ordered, -> { order(display_order: :asc) }
end
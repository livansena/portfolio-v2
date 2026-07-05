class Hero < ApplicationRecord
  self.table_name = "heroes"

  has_one_attached :image
  has_one_attached :resume

  validates :hero_tag, presence: true

  validates :title_line_1, presence: true
  validates :title_line_2, presence: true
  validates :title_highlight, presence: true

  validates :description, presence: true

  validates :primary_button_text, presence: true
  validates :primary_button_url, presence: true

  validates :secondary_button_text, presence: true
  validates :secondary_button_url, presence: true

  validates :status, presence: true
end
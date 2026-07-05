class About < ApplicationRecord
  self.table_name = "abouts"

  has_one_attached :image

  validates :tag, presence: true

  validates :title_line_1, presence: true
  validates :title_line_2, presence: true
  validates :title_line_3, presence: true

  validates :description, presence: true

  validates :highlight_1, presence: true
  validates :highlight_2, presence: true
  validates :highlight_3, presence: true
  validates :highlight_4, presence: true

  validates :status, presence: true
end
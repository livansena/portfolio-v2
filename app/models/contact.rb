class Contact < ApplicationRecord

  validates :tag, presence: true
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :linkedin_url, presence: true
  validates :github_url, presence: true
  validates :status, presence: true

end
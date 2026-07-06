class AddResumeUrlToContacts < ActiveRecord::Migration[7.1]
  def change
    add_column :contacts, :resume_url, :string
  end
end

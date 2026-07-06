class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :tag
      t.string :title
      t.text :subtitle
      t.string :linkedin_url
      t.string :github_url
      t.string :status

      t.timestamps
    end
  end
end

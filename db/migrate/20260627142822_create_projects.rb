class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :image
      t.string :github_url
      t.string :demo_url
      t.boolean :featured
      t.integer :position

      t.timestamps
    end
  end
end

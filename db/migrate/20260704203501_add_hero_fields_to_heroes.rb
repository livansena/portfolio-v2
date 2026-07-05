class AddHeroFieldsToHeroes < ActiveRecord::Migration[7.1]
  def change
    add_column :heroes, :hero_tag, :string
    add_column :heroes, :title_highlight, :string

    remove_column :heroes, :highlight, :string
  end
end
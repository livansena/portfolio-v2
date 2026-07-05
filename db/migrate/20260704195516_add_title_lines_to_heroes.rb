class AddTitleLinesToHeroes < ActiveRecord::Migration[7.1]
  def change
    add_column :heroes, :title_line_1, :string
    add_column :heroes, :title_line_2, :string

    remove_column :heroes, :title, :string
  end
end
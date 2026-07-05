class CreateAbouts < ActiveRecord::Migration[7.1]
  def change
    create_table :abouts do |t|
      t.string :tag
      t.string :title_line_1
      t.string :title_line_2
      t.string :title_line_3
      t.text :description
      t.string :highlight_1
      t.string :highlight_2
      t.string :highlight_3
      t.string :highlight_4
      t.string :status

      t.timestamps
    end
  end
end

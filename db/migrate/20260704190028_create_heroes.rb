class CreateHeroes < ActiveRecord::Migration[7.1]
  def change
    create_table :heroes do |t|
      t.string :title
      t.string :highlight
      t.text :description

      t.string :primary_button_text
      t.string :primary_button_url

      t.string :secondary_button_text
      t.string :secondary_button_url

      t.string :status

      t.timestamps
    end
  end
end
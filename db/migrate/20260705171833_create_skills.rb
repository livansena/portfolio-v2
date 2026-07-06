class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :title, null: false
      t.string :category, null: false
      t.text :description, null: false
      t.integer :proficiency, null: false
      t.integer :display_order, null: false
      t.boolean :published, default: false, null: false

      t.timestamps
    end

    add_index :skills, :published
    add_index :skills, :display_order
    add_index :skills, :category
  end
end
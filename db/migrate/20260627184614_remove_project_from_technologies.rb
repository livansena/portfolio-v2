class RemoveProjectFromTechnologies < ActiveRecord::Migration[7.1]
  def change
    remove_reference :technologies, :project, null: false, foreign_key: true
  end
end

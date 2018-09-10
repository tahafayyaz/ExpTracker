class CreateEmpProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_projects do |t|
      t.references :employee, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end

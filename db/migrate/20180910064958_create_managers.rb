class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :name
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end

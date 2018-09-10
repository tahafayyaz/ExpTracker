class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :inv_freq
      t.float :hourly_rate
      t.references :manager, foreign_key: true
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end

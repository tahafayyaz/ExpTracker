class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :exp_type
      t.float :amount
      t.date :month
      t.datetime :paid
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end

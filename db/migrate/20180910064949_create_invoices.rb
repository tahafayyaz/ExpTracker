class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :paid
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end

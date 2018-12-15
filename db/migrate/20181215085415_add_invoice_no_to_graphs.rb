class AddInvoiceNoToGraphs < ActiveRecord::Migration
  def change
  	add_column :graphs,:invoice ,:string
  end
end

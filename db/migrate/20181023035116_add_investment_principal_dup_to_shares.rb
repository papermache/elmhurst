class AddInvestmentPrincipalDupToShares < ActiveRecord::Migration
  def change
  	add_column :shares,:investment_principal_dup,:integer
  end
end

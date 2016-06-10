class AlterTableAddNewInvestmentToBrand < ActiveRecord::Migration[5.0]
  def change
    add_reference :brands, :new_investment, index: true, foreign_key: true
  end
end

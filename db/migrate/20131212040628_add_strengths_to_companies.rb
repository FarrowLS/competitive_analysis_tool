class AddStrengthsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :strengths, :text
  end
end

class AddWeaknessesToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :weaknesses, :text
  end
end

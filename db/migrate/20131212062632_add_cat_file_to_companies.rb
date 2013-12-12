class AddCatFileToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :cat_file, :string
  end
end

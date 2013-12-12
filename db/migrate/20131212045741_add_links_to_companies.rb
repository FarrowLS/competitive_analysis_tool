class AddLinksToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :links, :text
  end
end

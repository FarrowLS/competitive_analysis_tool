class AddQuickPitchToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :quick_pitch, :text
  end
end

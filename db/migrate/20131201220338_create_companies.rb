class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :pricing_information
      t.text :subject_matter_comparison
      t.text :length
      t.text :configuration
      t.text :certification
      t.text :noted_customers

      t.timestamps
    end
  end
end

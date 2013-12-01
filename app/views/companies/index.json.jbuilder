json.array!(@companies) do |company|
  json.extract! company, :name, :pricing_information, :subject_matter_comparison, :length, :configuration, :certification, :noted_customers
  json.url company_url(company, format: :json)
end

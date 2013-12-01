require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "Name",
      :pricing_information => "MyText",
      :subject_matter_comparison => "MyText",
      :length => "MyText",
      :configuration => "MyText",
      :certification => "MyText",
      :noted_customers => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

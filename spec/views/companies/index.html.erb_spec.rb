require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :pricing_information => "MyText",
        :subject_matter_comparison => "MyText",
        :length => "MyText",
        :configuration => "MyText",
        :certification => "MyText",
        :noted_customers => "MyText"
      ),
      stub_model(Company,
        :name => "Name",
        :pricing_information => "MyText",
        :subject_matter_comparison => "MyText",
        :length => "MyText",
        :configuration => "MyText",
        :certification => "MyText",
        :noted_customers => "MyText"
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

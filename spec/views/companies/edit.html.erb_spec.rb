require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :pricing_information => "MyText",
      :subject_matter_comparison => "MyText",
      :length => "MyText",
      :configuration => "MyText",
      :certification => "MyText",
      :noted_customers => "MyText"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_path(@company), "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "textarea#company_pricing_information[name=?]", "company[pricing_information]"
      assert_select "textarea#company_subject_matter_comparison[name=?]", "company[subject_matter_comparison]"
      assert_select "textarea#company_length[name=?]", "company[length]"
      assert_select "textarea#company_configuration[name=?]", "company[configuration]"
      assert_select "textarea#company_certification[name=?]", "company[certification]"
      assert_select "textarea#company_noted_customers[name=?]", "company[noted_customers]"
    end
  end
end

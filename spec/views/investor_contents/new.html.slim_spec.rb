require 'rails_helper'

RSpec.describe "investor_contents/new", type: :view do
  before(:each) do
    assign(:investor_content, InvestorContent.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new investor_content form" do
    render

    assert_select "form[action=?][method=?]", investor_contents_path, "post" do

      assert_select "input#investor_content_title[name=?]", "investor_content[title]"

      assert_select "textarea#investor_content_description[name=?]", "investor_content[description]"
    end
  end
end

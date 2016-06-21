require 'rails_helper'

RSpec.describe "investor_contents/edit", type: :view do
  before(:each) do
    @investor_content = assign(:investor_content, InvestorContent.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit investor_content form" do
    render

    assert_select "form[action=?][method=?]", investor_content_path(@investor_content), "post" do

      assert_select "input#investor_content_title[name=?]", "investor_content[title]"

      assert_select "textarea#investor_content_description[name=?]", "investor_content[description]"
    end
  end
end

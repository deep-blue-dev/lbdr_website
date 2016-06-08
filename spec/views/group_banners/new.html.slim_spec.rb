require 'rails_helper'

RSpec.describe "group_banners/new", type: :view do
  before(:each) do
    assign(:group_banner, GroupBanner.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new group_banner form" do
    render

    assert_select "form[action=?][method=?]", group_banners_path, "post" do

      assert_select "input#group_banner_title[name=?]", "group_banner[title]"

      assert_select "textarea#group_banner_description[name=?]", "group_banner[description]"
    end
  end
end

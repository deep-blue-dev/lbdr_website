require 'rails_helper'

RSpec.describe "group_banners/edit", type: :view do
  before(:each) do
    @group_banner = assign(:group_banner, GroupBanner.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit group_banner form" do
    render

    assert_select "form[action=?][method=?]", group_banner_path(@group_banner), "post" do

      assert_select "input#group_banner_title[name=?]", "group_banner[title]"

      assert_select "textarea#group_banner_description[name=?]", "group_banner[description]"
    end
  end
end

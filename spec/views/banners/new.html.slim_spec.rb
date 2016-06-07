require 'rails_helper'

RSpec.describe "banners/new", type: :view do
  before(:each) do
    assign(:banner, Banner.new(
      :sector_id => "",
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new banner form" do
    render

    assert_select "form[action=?][method=?]", banners_path, "post" do

      assert_select "input#banner_sector_id[name=?]", "banner[sector_id]"

      assert_select "input#banner_title[name=?]", "banner[title]"

      assert_select "textarea#banner_description[name=?]", "banner[description]"
    end
  end
end

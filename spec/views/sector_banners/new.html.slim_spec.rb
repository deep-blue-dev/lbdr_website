require 'rails_helper'

RSpec.describe "sector_banners/new", type: :view do
  before(:each) do
    assign(:sector_banner, SectorBanner.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new sector_banner form" do
    render

    assert_select "form[action=?][method=?]", sector_banners_path, "post" do

      assert_select "input#sector_banner_title[name=?]", "sector_banner[title]"

      assert_select "textarea#sector_banner_description[name=?]", "sector_banner[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "sector_banners/edit", type: :view do
  before(:each) do
    @sector_banner = assign(:sector_banner, SectorBanner.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit sector_banner form" do
    render

    assert_select "form[action=?][method=?]", sector_banner_path(@sector_banner), "post" do

      assert_select "input#sector_banner_title[name=?]", "sector_banner[title]"

      assert_select "textarea#sector_banner_description[name=?]", "sector_banner[description]"
    end
  end
end

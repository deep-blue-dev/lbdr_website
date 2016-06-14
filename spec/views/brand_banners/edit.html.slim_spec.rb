require 'rails_helper'

RSpec.describe "brand_banners/edit", type: :view do
  before(:each) do
    @brand_banner = assign(:brand_banner, BrandBanner.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit brand_banner form" do
    render

    assert_select "form[action=?][method=?]", brand_banner_path(@brand_banner), "post" do

      assert_select "input#brand_banner_title[name=?]", "brand_banner[title]"

      assert_select "textarea#brand_banner_description[name=?]", "brand_banner[description]"
    end
  end
end

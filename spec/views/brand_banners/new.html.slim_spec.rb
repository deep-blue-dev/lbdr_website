require 'rails_helper'

RSpec.describe "brand_banners/new", type: :view do
  before(:each) do
    assign(:brand_banner, BrandBanner.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new brand_banner form" do
    render

    assert_select "form[action=?][method=?]", brand_banners_path, "post" do

      assert_select "input#brand_banner_title[name=?]", "brand_banner[title]"

      assert_select "textarea#brand_banner_description[name=?]", "brand_banner[description]"
    end
  end
end

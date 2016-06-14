require 'rails_helper'

RSpec.describe "brand_banners/index", type: :view do
  before(:each) do
    assign(:brand_banners, [
      BrandBanner.create!(
        :title => "Title",
        :description => "MyText"
      ),
      BrandBanner.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of brand_banners" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

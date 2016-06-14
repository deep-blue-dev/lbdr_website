require 'rails_helper'

RSpec.describe "brand_banners/show", type: :view do
  before(:each) do
    @brand_banner = assign(:brand_banner, BrandBanner.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end

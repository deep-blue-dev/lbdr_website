require 'rails_helper'

RSpec.describe "sector_banners/show", type: :view do
  before(:each) do
    @sector_banner = assign(:sector_banner, SectorBanner.create!(
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

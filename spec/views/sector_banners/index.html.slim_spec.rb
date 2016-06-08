require 'rails_helper'

RSpec.describe "sector_banners/index", type: :view do
  before(:each) do
    assign(:sector_banners, [
      SectorBanner.create!(
        :title => "Title",
        :description => "MyText"
      ),
      SectorBanner.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of sector_banners" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

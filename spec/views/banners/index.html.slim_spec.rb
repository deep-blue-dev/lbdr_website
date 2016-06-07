require 'rails_helper'

RSpec.describe "banners/index", type: :view do
  before(:each) do
    assign(:banners, [
      Banner.create!(
        :sector_id => "",
        :title => "Title",
        :description => "MyText"
      ),
      Banner.create!(
        :sector_id => "",
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of banners" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

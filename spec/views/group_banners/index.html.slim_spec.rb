require 'rails_helper'

RSpec.describe "group_banners/index", type: :view do
  before(:each) do
    assign(:group_banners, [
      GroupBanner.create!(
        :title => "Title",
        :description => "MyText"
      ),
      GroupBanner.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of group_banners" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

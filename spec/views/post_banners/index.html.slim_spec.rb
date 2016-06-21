require 'rails_helper'

RSpec.describe "post_banners/index", type: :view do
  before(:each) do
    assign(:post_banners, [
      PostBanner.create!(
        :title => "Title",
        :description => "MyText"
      ),
      PostBanner.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of post_banners" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "post_banners/show", type: :view do
  before(:each) do
    @post_banner = assign(:post_banner, PostBanner.create!(
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

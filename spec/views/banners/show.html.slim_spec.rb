require 'rails_helper'

RSpec.describe "banners/show", type: :view do
  before(:each) do
    @banner = assign(:banner, Banner.create!(
      :sector_id => "",
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end

require 'rails_helper'

RSpec.describe "investor_contents/show", type: :view do
  before(:each) do
    @investor_content = assign(:investor_content, InvestorContent.create!(
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

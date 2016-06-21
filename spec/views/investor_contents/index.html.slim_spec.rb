require 'rails_helper'

RSpec.describe "investor_contents/index", type: :view do
  before(:each) do
    assign(:investor_contents, [
      InvestorContent.create!(
        :title => "Title",
        :description => "MyText"
      ),
      InvestorContent.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of investor_contents" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

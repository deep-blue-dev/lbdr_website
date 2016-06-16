require 'rails_helper'

RSpec.describe "investors/index", type: :view do
  before(:each) do
    assign(:investors, [
      Investor.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :description => "MyText"
      ),
      Investor.create!(
        :firstname => "Firstname",
        :lastname => "Lastname",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of investors" do
    render
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

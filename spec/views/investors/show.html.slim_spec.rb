require 'rails_helper'

RSpec.describe "investors/show", type: :view do
  before(:each) do
    @investor = assign(:investor, Investor.create!(
      :firstname => "Firstname",
      :lastname => "Lastname",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/MyText/)
  end
end

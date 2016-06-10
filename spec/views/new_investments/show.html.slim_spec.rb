require 'rails_helper'

RSpec.describe "new_investments/show", type: :view do
  before(:each) do
    @new_investment = assign(:new_investment, NewInvestment.create!(
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

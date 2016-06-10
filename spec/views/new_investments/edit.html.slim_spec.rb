require 'rails_helper'

RSpec.describe "new_investments/edit", type: :view do
  before(:each) do
    @new_investment = assign(:new_investment, NewInvestment.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit new_investment form" do
    render

    assert_select "form[action=?][method=?]", new_investment_path(@new_investment), "post" do

      assert_select "input#new_investment_title[name=?]", "new_investment[title]"

      assert_select "textarea#new_investment_description[name=?]", "new_investment[description]"
    end
  end
end

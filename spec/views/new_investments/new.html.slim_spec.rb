require 'rails_helper'

RSpec.describe "new_investments/new", type: :view do
  before(:each) do
    assign(:new_investment, NewInvestment.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new new_investment form" do
    render

    assert_select "form[action=?][method=?]", new_investments_path, "post" do

      assert_select "input#new_investment_title[name=?]", "new_investment[title]"

      assert_select "textarea#new_investment_description[name=?]", "new_investment[description]"
    end
  end
end

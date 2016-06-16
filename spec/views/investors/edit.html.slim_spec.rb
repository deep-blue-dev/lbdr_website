require 'rails_helper'

RSpec.describe "investors/edit", type: :view do
  before(:each) do
    @investor = assign(:investor, Investor.create!(
      :firstname => "MyString",
      :lastname => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit investor form" do
    render

    assert_select "form[action=?][method=?]", investor_path(@investor), "post" do

      assert_select "input#investor_firstname[name=?]", "investor[firstname]"

      assert_select "input#investor_lastname[name=?]", "investor[lastname]"

      assert_select "textarea#investor_description[name=?]", "investor[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "investors/new", type: :view do
  before(:each) do
    assign(:investor, Investor.new(
      :firstname => "MyString",
      :lastname => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new investor form" do
    render

    assert_select "form[action=?][method=?]", investors_path, "post" do

      assert_select "input#investor_firstname[name=?]", "investor[firstname]"

      assert_select "input#investor_lastname[name=?]", "investor[lastname]"

      assert_select "textarea#investor_description[name=?]", "investor[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "homes/new", type: :view do
  before(:each) do
    assign(:home, Home.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new home form" do
    render

    assert_select "form[action=?][method=?]", homes_path, "post" do

      assert_select "input#home_title[name=?]", "home[title]"

      assert_select "textarea#home_description[name=?]", "home[description]"
    end
  end
end

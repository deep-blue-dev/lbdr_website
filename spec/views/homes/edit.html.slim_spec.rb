require 'rails_helper'

RSpec.describe "homes/edit", type: :view do
  before(:each) do
    @home = assign(:home, Home.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit home form" do
    render

    assert_select "form[action=?][method=?]", home_path(@home), "post" do

      assert_select "input#home_title[name=?]", "home[title]"

      assert_select "textarea#home_description[name=?]", "home[description]"
    end
  end
end

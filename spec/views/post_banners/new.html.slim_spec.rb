require 'rails_helper'

RSpec.describe "post_banners/new", type: :view do
  before(:each) do
    assign(:post_banner, PostBanner.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new post_banner form" do
    render

    assert_select "form[action=?][method=?]", post_banners_path, "post" do

      assert_select "input#post_banner_title[name=?]", "post_banner[title]"

      assert_select "textarea#post_banner_description[name=?]", "post_banner[description]"
    end
  end
end

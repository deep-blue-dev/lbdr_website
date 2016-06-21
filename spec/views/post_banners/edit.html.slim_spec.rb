require 'rails_helper'

RSpec.describe "post_banners/edit", type: :view do
  before(:each) do
    @post_banner = assign(:post_banner, PostBanner.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit post_banner form" do
    render

    assert_select "form[action=?][method=?]", post_banner_path(@post_banner), "post" do

      assert_select "input#post_banner_title[name=?]", "post_banner[title]"

      assert_select "textarea#post_banner_description[name=?]", "post_banner[description]"
    end
  end
end

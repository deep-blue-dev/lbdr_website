require 'rails_helper'

RSpec.describe "banners/edit", type: :view do
  before(:each) do
    @banner = assign(:banner, Banner.create!(
      :sector_id => "",
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit banner form" do
    render

    assert_select "form[action=?][method=?]", banner_path(@banner), "post" do

      assert_select "input#banner_sector_id[name=?]", "banner[sector_id]"

      assert_select "input#banner_title[name=?]", "banner[title]"

      assert_select "textarea#banner_description[name=?]", "banner[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "contents/edit", type: :view do
  before(:each) do
    @content = assign(:content, Content.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit content form" do
    render

    assert_select "form[action=?][method=?]", content_path(@content), "post" do

      assert_select "input#content_title[name=?]", "content[title]"

      assert_select "textarea#content_description[name=?]", "content[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "PostBanners", type: :request do
  describe "GET /post_banners" do
    it "works! (now write some real specs)" do
      get post_banners_path
      expect(response).to have_http_status(200)
    end
  end
end

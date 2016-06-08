require 'rails_helper'

RSpec.describe "GroupBanners", type: :request do
  describe "GET /group_banners" do
    it "works! (now write some real specs)" do
      get group_banners_path
      expect(response).to have_http_status(200)
    end
  end
end

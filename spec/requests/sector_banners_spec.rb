require 'rails_helper'

RSpec.describe "SectorBanners", type: :request do
  describe "GET /sector_banners" do
    it "works! (now write some real specs)" do
      get sector_banners_path
      expect(response).to have_http_status(200)
    end
  end
end

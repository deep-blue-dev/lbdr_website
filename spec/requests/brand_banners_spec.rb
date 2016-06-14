require 'rails_helper'

RSpec.describe "BrandBanners", type: :request do
  describe "GET /brand_banners" do
    it "works! (now write some real specs)" do
      get brand_banners_path
      expect(response).to have_http_status(200)
    end
  end
end

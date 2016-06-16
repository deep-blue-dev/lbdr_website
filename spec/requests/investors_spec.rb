require 'rails_helper'

RSpec.describe "Investors", type: :request do
  describe "GET /investors" do
    it "works! (now write some real specs)" do
      get investors_path
      expect(response).to have_http_status(200)
    end
  end
end

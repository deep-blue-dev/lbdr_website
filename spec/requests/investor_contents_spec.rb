require 'rails_helper'

RSpec.describe "InvestorContents", type: :request do
  describe "GET /investor_contents" do
    it "works! (now write some real specs)" do
      get investor_contents_path
      expect(response).to have_http_status(200)
    end
  end
end

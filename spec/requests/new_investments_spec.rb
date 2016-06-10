require 'rails_helper'

RSpec.describe "NewInvestments", type: :request do
  describe "GET /new_investments" do
    it "works! (now write some real specs)" do
      get new_investments_path
      expect(response).to have_http_status(200)
    end
  end
end

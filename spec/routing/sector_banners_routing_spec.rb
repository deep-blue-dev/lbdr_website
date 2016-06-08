require "rails_helper"

RSpec.describe SectorBannersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sector_banners").to route_to("sector_banners#index")
    end

    it "routes to #new" do
      expect(:get => "/sector_banners/new").to route_to("sector_banners#new")
    end

    it "routes to #show" do
      expect(:get => "/sector_banners/1").to route_to("sector_banners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sector_banners/1/edit").to route_to("sector_banners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sector_banners").to route_to("sector_banners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sector_banners/1").to route_to("sector_banners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sector_banners/1").to route_to("sector_banners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sector_banners/1").to route_to("sector_banners#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe BrandBannersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/brand_banners").to route_to("brand_banners#index")
    end

    it "routes to #new" do
      expect(:get => "/brand_banners/new").to route_to("brand_banners#new")
    end

    it "routes to #show" do
      expect(:get => "/brand_banners/1").to route_to("brand_banners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/brand_banners/1/edit").to route_to("brand_banners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/brand_banners").to route_to("brand_banners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/brand_banners/1").to route_to("brand_banners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/brand_banners/1").to route_to("brand_banners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/brand_banners/1").to route_to("brand_banners#destroy", :id => "1")
    end

  end
end

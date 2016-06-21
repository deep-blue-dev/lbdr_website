require "rails_helper"

RSpec.describe PostBannersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/post_banners").to route_to("post_banners#index")
    end

    it "routes to #new" do
      expect(:get => "/post_banners/new").to route_to("post_banners#new")
    end

    it "routes to #show" do
      expect(:get => "/post_banners/1").to route_to("post_banners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/post_banners/1/edit").to route_to("post_banners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/post_banners").to route_to("post_banners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/post_banners/1").to route_to("post_banners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/post_banners/1").to route_to("post_banners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/post_banners/1").to route_to("post_banners#destroy", :id => "1")
    end

  end
end

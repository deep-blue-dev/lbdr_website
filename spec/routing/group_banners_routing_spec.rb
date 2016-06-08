require "rails_helper"

RSpec.describe GroupBannersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/group_banners").to route_to("group_banners#index")
    end

    it "routes to #new" do
      expect(:get => "/group_banners/new").to route_to("group_banners#new")
    end

    it "routes to #show" do
      expect(:get => "/group_banners/1").to route_to("group_banners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/group_banners/1/edit").to route_to("group_banners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/group_banners").to route_to("group_banners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/group_banners/1").to route_to("group_banners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/group_banners/1").to route_to("group_banners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_banners/1").to route_to("group_banners#destroy", :id => "1")
    end

  end
end

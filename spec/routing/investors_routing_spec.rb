require "rails_helper"

RSpec.describe InvestorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/investors").to route_to("investors#index")
    end

    it "routes to #new" do
      expect(:get => "/investors/new").to route_to("investors#new")
    end

    it "routes to #show" do
      expect(:get => "/investors/1").to route_to("investors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/investors/1/edit").to route_to("investors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/investors").to route_to("investors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/investors/1").to route_to("investors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/investors/1").to route_to("investors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/investors/1").to route_to("investors#destroy", :id => "1")
    end

  end
end

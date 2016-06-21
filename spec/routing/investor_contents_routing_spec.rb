require "rails_helper"

RSpec.describe InvestorContentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/investor_contents").to route_to("investor_contents#index")
    end

    it "routes to #new" do
      expect(:get => "/investor_contents/new").to route_to("investor_contents#new")
    end

    it "routes to #show" do
      expect(:get => "/investor_contents/1").to route_to("investor_contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/investor_contents/1/edit").to route_to("investor_contents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/investor_contents").to route_to("investor_contents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/investor_contents/1").to route_to("investor_contents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/investor_contents/1").to route_to("investor_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/investor_contents/1").to route_to("investor_contents#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe NewInvestmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/new_investments").to route_to("new_investments#index")
    end

    it "routes to #new" do
      expect(:get => "/new_investments/new").to route_to("new_investments#new")
    end

    it "routes to #show" do
      expect(:get => "/new_investments/1").to route_to("new_investments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/new_investments/1/edit").to route_to("new_investments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/new_investments").to route_to("new_investments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/new_investments/1").to route_to("new_investments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/new_investments/1").to route_to("new_investments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/new_investments/1").to route_to("new_investments#destroy", :id => "1")
    end

  end
end

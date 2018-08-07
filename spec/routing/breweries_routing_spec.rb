require "rails_helper"

RSpec.describe BreweriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/breweries").to route_to("breweries#index")
    end


    it "routes to #show" do
      expect(:get => "/breweries/1").to route_to("breweries#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/breweries").to route_to("breweries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/breweries/1").to route_to("breweries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/breweries/1").to route_to("breweries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/breweries/1").to route_to("breweries#destroy", :id => "1")
    end

  end
end

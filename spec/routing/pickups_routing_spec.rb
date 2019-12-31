require "rails_helper"

RSpec.describe PickupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/pickups").to route_to("pickups#index")
    end

    it "routes to #new" do
      expect(:get => "/pickups/new").to route_to("pickups#new")
    end

    it "routes to #show" do
      expect(:get => "/pickups/1").to route_to("pickups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pickups/1/edit").to route_to("pickups#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/pickups").to route_to("pickups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pickups/1").to route_to("pickups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pickups/1").to route_to("pickups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pickups/1").to route_to("pickups#destroy", :id => "1")
    end
  end
end

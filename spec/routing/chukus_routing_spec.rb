require "spec_helper"

describe ChukusController do
  describe "routing" do

    it "routes to #index" do
      get("/chukus").should route_to("chukus#index")
    end

    it "routes to #new" do
      get("/chukus/new").should route_to("chukus#new")
    end

    it "routes to #show" do
      get("/chukus/1").should route_to("chukus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chukus/1/edit").should route_to("chukus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chukus").should route_to("chukus#create")
    end

    it "routes to #update" do
      put("/chukus/1").should route_to("chukus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chukus/1").should route_to("chukus#destroy", :id => "1")
    end

  end
end

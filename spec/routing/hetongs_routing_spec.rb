require "spec_helper"

describe HetongsController do
  describe "routing" do

    it "routes to #index" do
      get("/hetongs").should route_to("hetongs#index")
    end

    it "routes to #new" do
      get("/hetongs/new").should route_to("hetongs#new")
    end

    it "routes to #show" do
      get("/hetongs/1").should route_to("hetongs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hetongs/1/edit").should route_to("hetongs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hetongs").should route_to("hetongs#create")
    end

    it "routes to #update" do
      put("/hetongs/1").should route_to("hetongs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hetongs/1").should route_to("hetongs#destroy", :id => "1")
    end

  end
end

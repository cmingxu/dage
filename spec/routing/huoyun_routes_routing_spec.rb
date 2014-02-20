# -*- encoding : utf-8 -*-
require "spec_helper"

describe HuoyunRoutesController do
  describe "routing" do

    it "routes to #index" do
      get("/huoyun_routes").should route_to("huoyun_routes#index")
    end

    it "routes to #new" do
      get("/huoyun_routes/new").should route_to("huoyun_routes#new")
    end

    it "routes to #show" do
      get("/huoyun_routes/1").should route_to("huoyun_routes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/huoyun_routes/1/edit").should route_to("huoyun_routes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/huoyun_routes").should route_to("huoyun_routes#create")
    end

    it "routes to #update" do
      put("/huoyun_routes/1").should route_to("huoyun_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/huoyun_routes/1").should route_to("huoyun_routes#destroy", :id => "1")
    end

  end
end

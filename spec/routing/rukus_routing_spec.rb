# -*- encoding : utf-8 -*-
require "spec_helper"

describe RukusController do
  describe "routing" do

    it "routes to #index" do
      get("/rukus").should route_to("rukus#index")
    end

    it "routes to #new" do
      get("/rukus/new").should route_to("rukus#new")
    end

    it "routes to #show" do
      get("/rukus/1").should route_to("rukus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rukus/1/edit").should route_to("rukus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rukus").should route_to("rukus#create")
    end

    it "routes to #update" do
      put("/rukus/1").should route_to("rukus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rukus/1").should route_to("rukus#destroy", :id => "1")
    end

  end
end

# -*- encoding : utf-8 -*-
require "spec_helper"

describe RemindsController do
  describe "routing" do

    it "routes to #index" do
      get("/reminds").should route_to("reminds#index")
    end

    it "routes to #new" do
      get("/reminds/new").should route_to("reminds#new")
    end

    it "routes to #show" do
      get("/reminds/1").should route_to("reminds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reminds/1/edit").should route_to("reminds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reminds").should route_to("reminds#create")
    end

    it "routes to #update" do
      put("/reminds/1").should route_to("reminds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reminds/1").should route_to("reminds#destroy", :id => "1")
    end

  end
end

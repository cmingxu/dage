# -*- encoding : utf-8 -*-
require "spec_helper"

describe ItemRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/item_records").should route_to("item_records#index")
    end

    it "routes to #new" do
      get("/item_records/new").should route_to("item_records#new")
    end

    it "routes to #show" do
      get("/item_records/1").should route_to("item_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/item_records/1/edit").should route_to("item_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/item_records").should route_to("item_records#create")
    end

    it "routes to #update" do
      put("/item_records/1").should route_to("item_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/item_records/1").should route_to("item_records#destroy", :id => "1")
    end

  end
end

# -*- encoding : utf-8 -*-
require "spec_helper"

describe HuozhansController do
  describe "routing" do

    it "routes to #index" do
      get("/huozhans").should route_to("huozhans#index")
    end

    it "routes to #new" do
      get("/huozhans/new").should route_to("huozhans#new")
    end

    it "routes to #show" do
      get("/huozhans/1").should route_to("huozhans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/huozhans/1/edit").should route_to("huozhans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/huozhans").should route_to("huozhans#create")
    end

    it "routes to #update" do
      put("/huozhans/1").should route_to("huozhans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/huozhans/1").should route_to("huozhans#destroy", :id => "1")
    end

  end
end

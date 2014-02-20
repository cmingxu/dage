# -*- encoding : utf-8 -*-
require "spec_helper"

describe ShippingsController do
  describe "routing" do

    it "routes to #index" do
      get("/shippings").should route_to("shippings#index")
    end

    it "routes to #new" do
      get("/shippings/new").should route_to("shippings#new")
    end

    it "routes to #show" do
      get("/shippings/1").should route_to("shippings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shippings/1/edit").should route_to("shippings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shippings").should route_to("shippings#create")
    end

    it "routes to #update" do
      put("/shippings/1").should route_to("shippings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shippings/1").should route_to("shippings#destroy", :id => "1")
    end

  end
end

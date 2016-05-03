require "spec_helper"

describe IngressosController do
  describe "routing" do

    it "routes to #index" do
      get("/ingressos").should route_to("ingressos#index")
    end

    it "routes to #new" do
      get("/ingressos/new").should route_to("ingressos#new")
    end

    it "routes to #show" do
      get("/ingressos/1").should route_to("ingressos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ingressos/1/edit").should route_to("ingressos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ingressos").should route_to("ingressos#create")
    end

    it "routes to #update" do
      put("/ingressos/1").should route_to("ingressos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ingressos/1").should route_to("ingressos#destroy", :id => "1")
    end

  end
end

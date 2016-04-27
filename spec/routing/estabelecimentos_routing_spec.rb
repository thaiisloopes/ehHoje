require "spec_helper"

describe EstabelecimentosController do
  describe "routing" do

    it "routes to #index" do
      get("/estabelecimentos").should route_to("estabelecimentos#index")
    end

    it "routes to #new" do
      get("/estabelecimentos/new").should route_to("estabelecimentos#new")
    end

    it "routes to #show" do
      get("/estabelecimentos/1").should route_to("estabelecimentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/estabelecimentos/1/edit").should route_to("estabelecimentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/estabelecimentos").should route_to("estabelecimentos#create")
    end

    it "routes to #update" do
      put("/estabelecimentos/1").should route_to("estabelecimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/estabelecimentos/1").should route_to("estabelecimentos#destroy", :id => "1")
    end

  end
end

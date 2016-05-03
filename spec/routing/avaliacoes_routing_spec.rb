require "spec_helper"

describe AvaliacoesController do
  describe "routing" do

    it "routes to #index" do
      get("/avaliacoes").should route_to("avaliacoes#index")
    end

    it "routes to #new" do
      get("/avaliacoes/new").should route_to("avaliacoes#new")
    end

    it "routes to #show" do
      get("/avaliacoes/1").should route_to("avaliacoes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/avaliacoes/1/edit").should route_to("avaliacoes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/avaliacoes").should route_to("avaliacoes#create")
    end

    it "routes to #update" do
      put("/avaliacoes/1").should route_to("avaliacoes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/avaliacoes/1").should route_to("avaliacoes#destroy", :id => "1")
    end

  end
end

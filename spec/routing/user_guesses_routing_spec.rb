require "spec_helper"

describe UserGuessesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_guesses").should route_to("user_guesses#index")
    end

    it "routes to #new" do
      get("/user_guesses/new").should route_to("user_guesses#new")
    end

    it "routes to #show" do
      get("/user_guesses/1").should route_to("user_guesses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_guesses/1/edit").should route_to("user_guesses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_guesses").should route_to("user_guesses#create")
    end

    it "routes to #update" do
      put("/user_guesses/1").should route_to("user_guesses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_guesses/1").should route_to("user_guesses#destroy", :id => "1")
    end

  end
end

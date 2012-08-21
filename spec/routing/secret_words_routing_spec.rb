require "spec_helper"

describe SecretWordsController do
  describe "routing" do

    it "routes to #index" do
      get("/secret_words").should route_to("secret_words#index")
    end

    it "routes to #new" do
      get("/secret_words/new").should route_to("secret_words#new")
    end

    it "routes to #show" do
      get("/secret_words/1").should route_to("secret_words#show", :id => "1")
    end

    it "routes to #edit" do
      get("/secret_words/1/edit").should route_to("secret_words#edit", :id => "1")
    end

    it "routes to #create" do
      post("/secret_words").should route_to("secret_words#create")
    end

    it "routes to #update" do
      put("/secret_words/1").should route_to("secret_words#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/secret_words/1").should route_to("secret_words#destroy", :id => "1")
    end

  end
end

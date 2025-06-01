require "rails_helper"

RSpec.describe FrostyQuestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/frosty_quests").to route_to("frosty_quests#index")
    end

    it "routes to #new" do
      expect(get: "/frosty_quests/new").to route_to("frosty_quests#new")
    end

    it "routes to #show" do
      expect(get: "/frosty_quests/1").to route_to("frosty_quests#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/frosty_quests/1/edit").to route_to("frosty_quests#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/frosty_quests").to route_to("frosty_quests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/frosty_quests/1").to route_to("frosty_quests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/frosty_quests/1").to route_to("frosty_quests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/frosty_quests/1").to route_to("frosty_quests#destroy", id: "1")
    end
  end
end

require "tracker"

RSpec.describe Tracker do
  describe "#create_sprint" do
    it "creates a new sprint when name is valid" do
      tracker = Tracker.new("Team Tracker")

      expect { tracker.create_sprint("Sprint 1") }.not_to raise_error
      expect(tracker.sprints).to have_key("Sprint 1")
    end

    it "raises an error when sprint name is empty" do
      tracker = Tracker.new("Team Tracker")

      expect { tracker.create_sprint("") }.to raise_error(ArgumentError)
    end
  end
end
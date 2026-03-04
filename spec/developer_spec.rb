require "developer"

RSpec.describe Developer do
  describe "#initialize" do

    it "initializes a valid developer" do
      name, email, role = "Chris", "chris@example.com", "engineer"
      expect { Developer.new(name, email, role) }.not_to raise_error
    end

    it "raises an error when name is empty" do
      name, email, role = "", "chris@example.com", "engineer"
      expect { Developer.new(name, email, role) }.to raise_error(ArgumentError)
    end

  end
end
require "Bug_report"

RSpec.describe BugReport do
  describe "#initialize" do

    it "should initialize a valid bug report" do
      reporter = Developer.new("Jane", "janedoe@example.com", "engineer")

      expect {
        BugReport.new(
          title: "Login failure",
          reporter: reporter,
          severity: 2
        )
      }.not_to raise_error
    end

    it "should not initialize when title is empty" do
      reporter = Developer.new("Jane", "janedoe@example.com", "engineer")

      expect {
        BugReport.new(
          title: "",
          reporter: reporter,
          severity: 2
        )
      }.to raise_error(ArgumentError)
    end

  end
end
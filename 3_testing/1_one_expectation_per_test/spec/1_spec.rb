require "spec_helper"

describe "A test with multiple expectations" do
  let(:some_json_structure) {
    {
      "location" => {
        "latitude" => "bees",
        "longitude" => 1,
      },
      "name" => "Single page web apps don't work"
    }
  }

  it "passes" do
    expect(some_json_structure.fetch("location").fetch("latitude")).to be_an_instance_of(Float)
    expect(some_json_structure.fetch("location").fetch("longitude")).to be_an_instance_of(Fixnum)
    expect(some_json_structure.fetch("name")).to eq("Single page web apps don't work")
  end

  context "multiple tests" do
    it "has a latitude of 54.1" do
      expect(some_json_structure.fetch("location").fetch("latitude")).to be_an_instance_of(Float)
    end

    it "has a longitude of 1" do
      expect(some_json_structure.fetch("location").fetch("longitude")).to be_an_instance_of(Fixnum)
    end

    it "has a name of 'single page web apps don't work" do
      expect(some_json_structure.fetch("name")).to eq("Single page web apps don't work")
    end
  end

  context "composed expectation" do
    it "matches" do
      expect(some_json_structure).to match(
        "location" => {
          "latitude" => 54.1,
          "longitude" => be_an_instance_of(Fixnum)
        },
        "name" => /.*/
      )
    end
  end
end

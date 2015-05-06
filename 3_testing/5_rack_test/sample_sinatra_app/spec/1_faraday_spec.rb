require "spec_helper"

RSpec.describe "GET /" do
  it "returns a 200" do
    expect(api_client.get("/").status).to be 200
  end
end

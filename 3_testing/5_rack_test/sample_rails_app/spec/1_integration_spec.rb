require "rails_helper"

RSpec.describe "the index page", :type => :request do
  describe "get /" do
    it "returns status 200" do
      get "/"
      expect(response.status).to be 200
    end
  end
end

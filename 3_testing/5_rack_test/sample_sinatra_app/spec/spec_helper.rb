require "faraday"
require "rack/test"
require "./app"

module Helper
  def api_client
    Faraday.new do |faraday|
      faraday.request :url_encoded
      faraday.adapter :rack, Sinatra::Application
    end
  end
end

RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include Helper
end

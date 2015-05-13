#require "net/http"
#
#response = Net::HTTP.get("httpbin.org", "/user-agent")
#
#puts response
#
#p "----------------------------"






















#require "net/http"
#
#uri = URI("http://httpbin.org/user-agent")
#
#response = Net::HTTP.get(uri)
#
#puts response
#
#p "--------------------------------"























#require "net/http"
#
#params = {:limit => 10, :offset => 3}
#
#uri = URI("http://httpbin.org/get")
#uri.query = URI.encode_www_form(params)
#response = Net::HTTP.get_response(uri)
#
#puts response.body
#puts response.code



































































































#require "net/http"
#
#uri = URI('http://httpbin.org/post')
#response = Net::HTTP.post_form(uri, :q => 'ruby')
#
#puts response.body
#p response.code





































































































require "net/http"

Net::HTTP.start("httpbin.org", 80) do |http|
  request = Net::HTTP::Get.new(URI("http://httpbin.org/user-agent"))
  response = http.request(request)

  p response.code
  puts response.body
end






































































































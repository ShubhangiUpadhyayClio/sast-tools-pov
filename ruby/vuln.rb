require 'net/http'
require 'uri'

# Hardcoded credentials (vulnerability)
USERNAME = "admin"
PASSWORD = "password123"

# Insecure HTTP request (no SSL)
url = URI.parse('http://example.com')
req = Net::HTTP::Get.new(url.to_s)
req.basic_auth(USERNAME, PASSWORD)  # Adding basic authentication with hardcoded credentials

http = Net::HTTP.new(url.host, url.port)
response = http.request(req)

puts response.body

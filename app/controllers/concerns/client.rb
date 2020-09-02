require "net/http"
require "uri"
require "json"

class Client
  def initialize(url)
    @uri = URI.parse(url)
  end

  def fetch_data
    req = Net::HTTP::Get.new(@uri)
    req['Authorization'] = "Bearer #{ENV["QIITA_ACCESS_TOKEN"]}"

    http = Net::HTTP.new(@uri.host, @uri.port)
    http.use_ssl = true
    res = http.request(req)
  
    return JSON.parse(res.body)
  end
end
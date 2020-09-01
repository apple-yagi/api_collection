require "net/http"
require "uri"
require "json"

class Client
  def initialize(url)
    @uri = URI.parse(url)
  end

  def fetch_data
    json = Net::HTTP.get(@uri)
    JSON.parse(json)
  end
end
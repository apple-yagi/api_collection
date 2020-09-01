require_relative './concerns/client'

class QiitaController < ApplicationController
  def index
    c = Client.new("https://qiita.com/api/v2/items?page=1&per_page=20")
    @data = c.fetch_data
  end
end

class ArticlesController < ApplicationController
  def welcome
    response = (Faraday.get("https://api.wikimedia.org/feed/v1/wikipedia/en/onthisday/all/04/11").body)
    @articles = JSON.parse(response)['selected']
  end
end

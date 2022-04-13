class ArticlesController < ApplicationController
  def index
    response = (Faraday.get("https://api.wikimedia.org/feed/v1/wikipedia/en/onthisday/events/#{Date.today.month.to_s}/#{Date.today.day.to_s}").body)
    @articles = JSON.parse(response)['events']
  end
end

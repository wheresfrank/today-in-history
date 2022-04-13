class DeathsController < ApplicationController
    def index
        response = (Faraday.get("https://api.wikimedia.org/feed/v1/wikipedia/en/onthisday/deaths/#{Date.today.month.to_s}/#{Date.today.day.to_s}").body)
        @deaths = JSON.parse(response)['deaths']
    end
end

class BirthsController < ApplicationController
    def index
        response = (Faraday.get("https://api.wikimedia.org/feed/v1/wikipedia/en/onthisday/births/#{Date.today.month.to_s}/#{Date.today.day.to_s}").body)
        @births = JSON.parse(response)['births']
      end
end

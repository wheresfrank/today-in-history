class HolidaysController < ApplicationController
    def index
        response = (Faraday.get("https://api.wikimedia.org/feed/v1/wikipedia/en/onthisday/holidays/#{Date.today.month.to_s}/#{Date.today.day.to_s}").body)
        @holidays = JSON.parse(response)['holidays']
    end
end

module ApplicationHelper
    def getquoteofaday
        require 'net/http'
        require 'json'
        url = URI('https://zenquotes.io/api/today')
        response = Net::HTTP.get(url)
        quote = JSON.parse(response)
        quote[0]["q"]
    end
end

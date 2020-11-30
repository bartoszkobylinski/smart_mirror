require 'net/http'
require 'json'

def getquoteofaday
    url = URI('https://zenquotes.io/api/today')
    response = Net::HTTP.get(url)
    quote = JSON.parse(response)
    puts quote[0]["h"]
end

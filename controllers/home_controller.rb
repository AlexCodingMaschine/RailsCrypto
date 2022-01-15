class HomeController < ApplicationController
  def index

    require "net/http"
    require "json"

    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=415f1aa8-cfa7-4549-8c8c-59e0a0767207&start=1&limit=5000&convert=USD'
    #url von Coinmarketcap mit eigener API liste und meinem eigenen API key
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    #Holt die Antwort, also die Daten
    @coins = JSON.parse(@response)
    #Umwandlung von JSon in Rubyhash
    #Folge 25 --> nochmal nachgucken
    @my_coins = ["BTC","XRP","ADA","XLM","STEEM",]


  end

  def about 
  end

  def lookup
    @symbol = params[:sym]


    require "net/http"
    require "json"

    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=415f1aa8-cfa7-4549-8c8c-59e0a0767207&start=1&limit=5000&convert=USD'
    #url von Coinmarketcap mit eigener API liste und meinem eigenen API key
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    #Holt die Antwort, also die Daten
    @coins = JSON.parse(@response)
    #Umwandlung von JSon in Rubyhash
    #Folge 25 --> nochmal nachgucken
    @my_coins = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,102,]
    #Wir haben hier die Zahlen von 1 bis 100, somit die TOP 100 Cryptos, die sich auch selber aktualisieren durch die API--> 
  end
end

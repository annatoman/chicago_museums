require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
    def scrape_city_urls
        illinois_url = 'http://museumsusa.org/museums/?k=1271400%2cState%3aIL'

        html = URI.open(illinois_url)

        doc = Nokogiri::HTML(html)

        cities = doc.css('#ctl08_ctl00_rptChildNodes_dlItems_1').css('.ui small text')

        binding.pry
    end
end

scrape = Scraper.new
scrape.scrape_city_urls
require 'open-uri'
require 'nokogiri'
require 'geocoder'

namespace :twitter do
  task :andysitalianice => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search('AndysItalianIce')
  	@tweets_hash = @tweets.to_hash
  	@tweets = @tweets_hash[:statuses]
  	@tweets.each do |tweet|
      @location = Location.new
  		@location.twitter_text = tweet[:text]
      @location.street1 = north_south_street(@location.twitter_text)
      @location.street2 = east_west_street(@location.twitter_text)
      @location.time = tweet[:created_at]
      @location.truck_id = 1
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :biandangnyc => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("biandangnyc")
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = north_south_street(@location.twitter_text)
      @location.street2 = east_west_street(@location.twitter_text)
      @location.time = tweet[:created_at]
      @location.truck_id = 2
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :all => []
end

task :trucks => :environment do
	@name = []

	doc = Nokogiri::HTML(open('http://streetvendor.org/vendys/finalists/'))
  data = doc.css(".tab-pane.active p")
  data.each do |a|
    @name << a.children.text
  end

  string_trucks = @name.to_s
  seperated_trucks = string_trucks.gsub('\n', ',')
  array_trucks = seperated_trucks.split(',')
	array_trucks.each do |truck|
		@truck = Truck.new
		@truck.name = truck
		@truck.save
  end
end
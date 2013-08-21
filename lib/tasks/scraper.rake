require 'open-uri'
require 'nokogiri'

task :twitter => :environment do
  Twitter.configure do |config|
    config.consumer_key = ENV['TWITTER_KEY']
    config.consumer_secret = ENV['TWITTER_SECRET']
    config.oauth_token = ENV['TWITTER_OATH_TOKEN']
    config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
  end

  @tweets = Twitter.search("AndysItalianIce")
	@tweets_hash = @tweets.to_hash
	@tweets = @tweets_hash[:statuses]
	@tweets.each do |t|
    @location = Location.new
		@location.address = t[:text]
    @location.time = t[:created_at]
    @location.truck_id = 1
    @location.save
	end
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
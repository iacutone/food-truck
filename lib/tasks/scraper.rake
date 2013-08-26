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

    @tweets = Twitter.search('AndysItalianIce', since_id: :tweet_id)
  	@tweets_hash = @tweets.to_hash
  	@tweets = @tweets_hash[:statuses]
  	@tweets.each do |tweet|
      @location = Location.new
  		@location.twitter_text = tweet[:text]
      @location.street1 = andysitalianice_north_south_street(@location.twitter_text)
      @location.street2 = andysitalianice_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 1
      @location.tweet_id = tweet[:id_str]
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

    @tweets = Twitter.search("biandangnyc", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = biandangnyc_north_south_street(@location.twitter_text)
      @location.street2 = biandangnyc_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 2
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

    task :waffletruck => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search('waffletruck', since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = waffletruck_north_south_street(@location.twitter_text)
      @location.street2 = waffletruck_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 55
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :bigdsgrub => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("bigdsgrub", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = bigdsgrub_north_south_street(@location.twitter_text)
      @location.street2 = bigdsgrub_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 3
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :blend_express => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("Blend_Express", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = blend_express_north_south_street(@location.twitter_text)
      @location.street2 = blend_express_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 4
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :chinese_mirch => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("ChineseMirch", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = chinese_mirch_north_south_street(@location.twitter_text)
      @location.street2 = chinese_mirch_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 6
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :treats_truck => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("TheTreatsTruck", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = treats_truck_north_south_street(@location.twitter_text)
      @location.street2 = treats_truck_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 50
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :taim_mobile => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("TaimMobile", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = taim_mobile_north_south_street(@location.twitter_text)
      @location.street2 = taim_mobile_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 49
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :taco_bite => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("tacobite", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = taco_bite_north_south_street(@location.twitter_text)
      @location.street2 = taco_bite_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 48
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :sweetery_nyc => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("SweeteryNYC", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = sweetery_nyc_north_south_street(@location.twitter_text)
      @location.street2 = sweetery_nyc_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 47
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :steaks_crepes => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("steaksNcrepes", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = steaks_crepes_north_south_street(@location.twitter_text)
      @location.street2 = steaks_crepes_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 46
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :souvlaki_truck => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("souvlakitruck", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = souvlaki_truck_north_south_street(@location.twitter_text)
      @location.street2 = souvlaki_truck_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 45
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :kimchi_truck => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("KimchiTruck", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = kimchi_truck_north_south_street(@location.twitter_text)
      @location.street2 = kimchi_truck_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 23
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :seoul_food => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("seoulfoodnyc", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = seoul_food_north_south_street(@location.twitter_text)
      @location.street2 = seoul_food_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 43
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :schnitz_things => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    @tweets = Twitter.search("schnitznthings", since_id: :tweet_id)
    @tweets_hash = @tweets.to_hash
    @tweets = @tweets_hash[:statuses]
    @tweets.each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet[:text]
      @location.street1 = schnitz_things_north_south_street(@location.twitter_text)
      @location.street2 = schnitz_things_east_west_street(@location.twitter_text)
      @location.time = format_time(tweet[:created_at])
      @location.truck_id = 42
      @location.tweet_id = tweet[:id_str]
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 && @location.street2.size == 0
    end
  end

  task :all => [:andysitalianice, :biandangnyc, :waffletruck, :bigdsgrub, :blend_express, :chinese_mirch, :treats_truck, :taim_mobile, :taco_bite, :sweetery_nyc, :steaks_crepes, :souvlaki_truck, :kimchi_truck, :seoul_food, :schnitz_things]
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
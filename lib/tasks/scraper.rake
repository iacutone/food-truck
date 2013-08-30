require 'open-uri'
require 'geocoder'
require 'csv'

namespace :twitter do
  task :andysitalianice => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline('AndysItalianIce').each do |tweet|
      @location = Location.new
  		@location.twitter_text = tweet.text
      @location.street1 = andysitalianice_north_south_street(@location.twitter_text)
      @location.street2 = andysitalianice_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 1
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0 
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

    @tweets = Twitter.user_timeline("biandangnyc").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = biandangnyc_north_south_street(@location.twitter_text)
      @location.street2 = biandangnyc_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 2
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("bigdsgrub").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = bigdsgrub_north_south_street(@location.twitter_text)
      @location.street2 = bigdsgrub_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 3
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("Blend_Express").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = blend_express_north_south_street(@location.twitter_text)
      @location.street2 = blend_express_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 4
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("ChineseMirch").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = chinese_mirch_north_south_street(@location.twitter_text)
      @location.street2 = chinese_mirch_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 6
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :domo_taco => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("DomoTaco").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = domo_taco_north_south_street(@location.twitter_text)
      @location.street2 = domo_taco_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 10
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0 
    end
  end

  task :eddies_pizza => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("EddiesPizzaNY").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = eddies_pizza_north_south_street(@location.twitter_text)
      @location.street2 = eddies_pizza_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 11
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :fishing_shrimp => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("FishingShrimp").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = fishing_shrimp_north_south_street(@location.twitter_text)
      @location.street2 = fishing_shrimp_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 14
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :frites_meats => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("fritesnmeats").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = frites_meats_north_south_street(@location.twitter_text)
      @location.street2 = frites_meats_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 15
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :fun_buns => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("funbunsnyc").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = fun_buns_north_south_street(@location.twitter_text)
      @location.street2 = fun_buns_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 16
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :hibachi_heaven => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("hibachiheaven").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = hibachi_heaven_north_south_street(@location.twitter_text)
      @location.street2 = hibachi_heaven_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 21
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :korilla_bbq => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("KorillaBBQ").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = korilla_bbq_north_south_street(@location.twitter_text)
      @location.street2 = korilla_bbq_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 24
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :mexico_blvd => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("MexicoBlvd").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = mexico_blvd_north_south_street(@location.twitter_text)
      @location.street2 = mexico_blvd_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 27
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :mexicue => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("Mexicue").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = mexicue_north_south_street(@location.twitter_text)
      @location.street2 = mexicue_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 28
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :mikenwillies => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("mikenwillies").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = mikenwillies_north_south_street(@location.twitter_text)
      @location.street2 = mikenwillies_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 29
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :milktrucknyc => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("milktrucknyc").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = milktrucknyc_north_south_street(@location.twitter_text)
      @location.street2 = milktrucknyc_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 30
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :munchie_mobile => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("MunchieMobileNY").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = munchie_mobile_north_south_street(@location.twitter_text)
      @location.street2 = munchie_mobile_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 33
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :morristruck => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("morristruck").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = morristruck_north_south_street(@location.twitter_text)
      @location.street2 = morristruck_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 31
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("TheTreatsTruck").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = treats_truck_north_south_street(@location.twitter_text)
      @location.street2 = treats_truck_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 50
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("TaimMobile", ).each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = taim_mobile_north_south_street(@location.twitter_text)
      @location.street2 = taim_mobile_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 49
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("tacobite").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = taco_bite_north_south_street(@location.twitter_text)
      @location.street2 = taco_bite_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 48
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("SweeteryNYC").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = sweetery_nyc_north_south_street(@location.twitter_text)
      @location.street2 = sweetery_nyc_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 47
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("steaksNcrepes").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = steaks_crepes_north_south_street(@location.twitter_text)
      @location.street2 = steaks_crepes_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 46
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("souvlakitruck").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = souvlaki_truck_north_south_street(@location.twitter_text)
      @location.street2 = souvlaki_truck_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 45
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("KimchiTruck").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = kimchi_truck_north_south_street(@location.twitter_text)
      @location.street2 = kimchi_truck_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 23
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :nuchas => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("NuchasNYC").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = nuchas_north_south_street(@location.twitter_text)
      @location.street2 = nuchas_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 35
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :palenque => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("Palenquefood").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = palenque_north_south_street(@location.twitter_text)
      @location.street2 = palenque_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 37
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :phils_steaks => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("PhilsSteaks").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = phils_steaks_north_south_street(@location.twitter_text)
      @location.street2 = phils_steaks_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 39
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :rickshawbar => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline("rickshawbar").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = rickshawbar_north_south_street(@location.twitter_text)
      @location.street2 = rickshawbar_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 41
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("seoulfoodnyc").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = seoul_food_north_south_street(@location.twitter_text)
      @location.street2 = seoul_food_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 43
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline("schnitznthings").each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = schnitz_things_north_south_street(@location.twitter_text)
      @location.street2 = schnitz_things_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 42
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end

  task :uncle_gussys => :environment do
    include Parser

    Twitter.configure do |config|
      config.consumer_key = ENV['TWITTER_KEY']
      config.consumer_secret = ENV['TWITTER_SECRET']
      config.oauth_token = ENV['TWITTER_OATH_TOKEN']
      config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
    end

    Twitter.user_timeline('UncleGussys').each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = uncle_gussys_north_south_street(@location.twitter_text)
      @location.street2 = uncle_gussys_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 53
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
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

    Twitter.user_timeline('waffletruck').each do |tweet|
      @location = Location.new
      @location.twitter_text = tweet.text
      @location.street1 = waffletruck_north_south_street(@location.twitter_text)
      @location.street2 = waffletruck_east_west_street(@location.twitter_text)
      @location.time = tweet.created_at
      @location.truck_id = 55
      @location.tweet_id = tweet.id
      @location.address = string_cleaner(@location.street1, @location.street2)
      @location.save unless @location.street1.size == 0 || @location.street2.size == 0
    end
  end
  # :waffletruck and :souvlaki_truck removed
  task :all => [:andysitalianice, :biandangnyc, :bigdsgrub, :blend_express, :chinese_mirch, :treats_truck, :taim_mobile, :taco_bite, :sweetery_nyc, :steaks_crepes, :kimchi_truck, :seoul_food, :schnitz_things, :uncle_gussys, :rickshawbar, :phils_steaks, :palenque, :nuchas, :domo_taco, :eddies_pizza, :fishing_shrimp, :frites_meats, :fun_buns, :hibachi_heaven, :korilla_bbq, :mexico_blvd, :mexicue, :mikenwillies, :milktrucknyc, :morristruck, :munchie_mobile]
end

task :truck_production => :environment do
  CSV.foreach('trucks.csv', :headers => true) do |row|
    @truck = Truck.new
    @truck.id = row['id']
    @truck.name = row['name']
    @truck.twitter = row['twitter']
    @truck.save
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
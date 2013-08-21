require 'rubygems'
require 'nokogiri'
# require 'mechanize'
require 'open-uri'
require 'pry'
require 'httparty'

task :twitter_scrape => :environment do
  Twitter::REST::Client.new do |config|
    config.consumer_key = ENV['TWITTER_KEY']
    config.consumer_secret = ENV['TWITTER_SECRET']
    config.oauth_token = ENV['TWITTER_OATH_TOKEN']
    config.oauth_token_secret = ENV['TWITTER_OATH_TOKEN_SECRET']
  end
end
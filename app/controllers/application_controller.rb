class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :time_formater

  def time_formater(time)
  	Time.parse(time)
  end
end

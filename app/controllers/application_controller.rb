# require 'rubygems'
# require 'json'
# require 'net/http'
# require 'rest_client'
# require 'nokogiri'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize
  	redirect_to posts_path, alert: "Not Authorized" if current_user.nil?
  end

end

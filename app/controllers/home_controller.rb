# encoding: UTF-8
class HomeController < ApplicationController

  require 'mysql2'
  require 'json'

  before_filter :connect_db

  def index
  	@num = "10"
    render 'home/map'
  end

  def mrt_all 
    @mrt_all = Mrt.all   
    render :json => @mrt_all
    # @render_json = JSON.pretty_generate(@mrt_all)
    # render :json => @mrt_all, :charset => 'UTF-8', :callback => "call_back"
    # respond_to do |format|
    #   format.json render :partial =>'home/return'
    # end
    # render :partial => 'home/return'
  end



  protected

  def connect_db
  	host = "54.248.134.150"
	  username = "m5"
	  password = "yahoo"
	  database = "m5"
	  encoding = "utf8"
    @db = Mysql2::Client.new(:host => host, :username => username, :password=> password, :database => database, :encoding => encoding)
  end
end

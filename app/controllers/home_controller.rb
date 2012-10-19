# encoding: UTF-8
class HomeController < ApplicationController

  require 'mysql2'
  require 'json'

  before_filter :connect_db

  def index
  	@num = "10"
    render 'home/map'
  end

  # get "/mrt"
  def mrt_all 
    @return_value = Mrt.all   
    puts @return_value[32]['name']
    render :json => @return_value
    # @render_json = JSON.pretty_generate(@mrt_all)
    # render :json => @mrt_all, :charset => 'UTF-8', :callback => "call_back"
    # respond_to do |format|
    #   format.json render :partial =>'home/return'
    # end
    # render :partial => 'home/return'
  end

  def mrt
    @return = Mrt.where(:id => params[:id])[0]
    render :json => @return
  end

  def spot
    @return = Mrt.where(:id => params[:id])[0].spots
    render :json => @return
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

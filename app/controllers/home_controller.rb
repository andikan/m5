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

  def mrt_id
    @return = Mrt.where(:id => params[:id])[0]
    render :json => @return
  end

  def mrt_number
    @return = Mrt.where(:number => params[:number])[0]
    render :json => @return
  end

  def mrt_id_spot
    @return = Mrt.where(:id => params[:id])[0].spots
    render :json => @return
  end

  def mrt_number_spot
    @return = Mrt.where(:number => params[:number])[0].spots
    render :json => @return
  end

  def luckyspot
    # taipei station (25.046374, 121.517896)
    @direction = params[:direction]
    @num1 = params[:num1]
    @num2 = params[:num2]
    @return = {}
    @return['direction'] = @direction
    @return['num1'] = @num1
    @return['num2'] = @num2
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

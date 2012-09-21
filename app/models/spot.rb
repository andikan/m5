class Spot < ActiveRecord::Base
	attr_accessible :id, :name, :address, :tel, :open_time, :url, :latitude, :longitude, :image
    has_many :mrt_spotships
    has_many :mrts, :through => :mrt_spotships
end
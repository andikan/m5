class Mrt < ActiveRecord::Base
	attr_accessible :id, :name, :number, :address, :latitude, :longitude
    has_many :mrt_spotships
    has_many :spots, :through => :mrt_spotships
end
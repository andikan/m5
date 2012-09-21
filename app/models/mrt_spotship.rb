class MrtSpotship < ActiveRecord::Base
	attr_accessible :mrt_id, :spot_id
    belongs_to :spot
    belongs_to :mrt
end
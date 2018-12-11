class Move < ApplicationRecord
	belongs_to :place1, class_name: 'Place', foreign_key: 'place1_id'
	belongs_to :place2, class_name: 'Place', foreign_key: 'place2_id'
end

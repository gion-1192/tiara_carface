class Place < ApplicationRecord
	belongs_to :employee, optional: true
	validates :name, presence: true
end

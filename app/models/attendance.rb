class Attendance < ApplicationRecord
	belongs_to :move
	belongs_to :employee
	validates :date, presence: true
end

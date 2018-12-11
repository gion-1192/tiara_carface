class Employee < ApplicationRecord
	has_one :place, dependent: :destroy

	validates :tiara_id, uniqueness: true, presence: true
	validates :name, presence: true
	validates :car_model, inclusion: { in: [1, 15, 20] }
end

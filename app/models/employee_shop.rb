class EmployeeShop < ApplicationRecord
	belongs_to :employee
	belongs_to :shop
end

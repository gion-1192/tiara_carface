class EmployeeCreateService < BaseService
	def exec(employee_params)
		employee = Employee.new(employee_params)
		Employee.transaction do
			employee.save!
			Place.create!(name: default_place_name(employee),
										employee_id: employee.id)
			employee
		end
	rescue => e
		employee
	end

	private
	def default_place_name(employee)
		"#{employee.name}さんの自宅"
	end
end

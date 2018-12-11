class ChangeColumnEmployeeAndPlace < ActiveRecord::Migration[5.0]
  def change
		add_column :places, :employee_id, :integer
		remove_column :employees, :place_id, :integer
  end
end

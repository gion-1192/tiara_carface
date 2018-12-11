class AddColumnsEmployee < ActiveRecord::Migration[5.0]
  def change
		add_column :employees, :tiara_id, :integer
		add_column :employees, :name, :string
		add_column :employees, :place_id, :integer
		add_column :employees, :car_model, :integer
  end
end

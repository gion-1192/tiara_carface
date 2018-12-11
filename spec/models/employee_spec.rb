require 'rails_helper'

RSpec.describe Employee, type: :model do
	let!(:employee) { FactoryBot.build(:employee) }

	context 'バリデーションテスト' do
		it 'データOK' do 
			expect(employee.save).to eq(true)
		end

		it '名前が空白ならエラー' do
			employee.name = ''
			expect(employee.save).to eq(false)
		end

		it 'Tiara_idはユニークであること' do
			FactoryBot.create(:employee)
			expect(employee.save).to eq(false)
		end

		it 'Car_modelは1か15か20であること' do
			employee.car_model = 10
			expect(employee.save).to eq(false)
		end
	end
end

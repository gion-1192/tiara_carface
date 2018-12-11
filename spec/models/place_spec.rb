require 'rails_helper'

RSpec.describe Place, type: :model do
	let!(:place) { FactoryBot.build(:place) }
	context 'バリデーションテスト' do
		it 'データOK' do
			expect(place.save).to eq(true)
		end

	  it 'nameが空ならエラー' do
			place.name = ''
			expect(place.save).to eq(false)
		end

		it 'リレーションテスト' do
			expect(place.employee.name).to eq('Myname')
		end

		it 'Employeeはnil可' do
			place.employee = nil
			expect(place.save).to eq(true)
		end
	end
end

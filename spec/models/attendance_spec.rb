require 'rails_helper'

RSpec.describe Attendance, type: :model do
	let(:attendance) { FactoryBot.create(:attendance) }
  context 'バリデーションテスト' do
		it 'データOK' do
			expect(attendance.save).to eq(true)
		end

		it 'dateがnilならエラー' do
			attendance.date = nil
			expect(attendance.save).to eq(false)
		end

		it 'リレーションテスト' do
			expect(attendance.employee.name == 'Myname' &&
					attendance.move.place1.name == 'MyPlace').to eq(true)
		end
	end
end

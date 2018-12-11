require 'rails_helper'

RSpec.describe Move, type: :model do
	let(:move) { FactoryBot.build(:move) }
	context 'バリデーションテスト' do
  	it 'データOK' do
			expect(move.save).to eq(true)
		end

		it 'distanceはnull可' do
			move.distance = nil
			expect(move.save).to eq(true)
		end

		it 'record_store_idはnull可' do
			move.record_store_id = nil
			expect(move.save).to eq(true)
		end

		it 'place1がnilでエラー' do
			move.place1 = nil
			expect(move.save).to eq(false)
		end

		it 'place2がnilでエラー' do
			move.place2 = nil
			expect(move.save).to eq(false)
		end
		
		it 'リレーションテスト' do
			expect(move.place1.name == 'MyPlace' &&
					move.place2.name == 'MyPlace').to eq(true)
		end
	end
end


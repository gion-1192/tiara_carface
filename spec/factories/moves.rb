FactoryBot.define do
  factory :move do
		place1 { create(:place) }
		place2 { create(:place) }
    distance { 1 }
    record_store_id { 1 }
  end
end

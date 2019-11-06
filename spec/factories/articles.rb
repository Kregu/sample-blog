FactoryBot.define do
	factory :user do
		username {"Joe"}
		id {"1"}
	end

	factory :article do
		title {"Article title"}
		text {"Article text"}
		user_id {"1"}
	end
end
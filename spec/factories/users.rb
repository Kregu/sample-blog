FactoryBot.define do
	factory :user do
		username {"Joe"}
		id {"1"}
		email { "#{username}@example.com".downcase }
		password {"123456"}
	end
end

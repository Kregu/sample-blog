require "rails_helper"

describe Comment do
	describe "associations" do
		it { should belong_to :article }
	end

	describe "validation" do
		it {should validate_length_of(:body).is_at_least(5).is_at_most(4000)} 
	end
		
end

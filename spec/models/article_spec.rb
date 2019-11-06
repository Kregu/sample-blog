require "rails_helper"

describe Article do
	describe "validations" do
		it { should validate_presence_of :title }
		it { should validate_presence_of :text }	
	end

	describe "associacions" do
		it { should have_many :comments }
	end

	describe "#subject" do
		it "return the article title" do

			user = build(:user, username: "Joe", id: "1")
			# create object article
			article = create(:article, title: 'Lorem Ipsum', user_id: "1")

			# assert
			expect(article.subject).to eq 'Lorem Ipsum'
		end
	end
end

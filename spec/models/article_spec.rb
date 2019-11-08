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

			user = create(:user, username: "Joe")
			# create object article
			article = create(:article, title: 'Lorem Ipsum')

			# assert
			expect(article.subject).to eq 'Lorem Ipsum'
		end
	end

	describe "#last_comment" do
		it "return the last comment" do
			# create article with comments
			user = create(:user, username: "Joe")
			article = create(:article_with_comments)

			expect(article.last_comment.body).to eq "comment body 3"
		end
	end

end

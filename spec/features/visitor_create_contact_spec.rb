require "rails_helper"
require "capybara/rspec"

feature "Contact Creation" do
	scenario "allows acees to contacts page" do
		visit new_contacts_path
		expect(page).to have_content 'Contact us'
	end	
end
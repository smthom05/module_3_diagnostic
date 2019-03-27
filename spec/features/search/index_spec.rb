require 'rails_helper'

feature "Seach Index Page" do
  describe 'after a user types in a zip code and hits enter' do
    it 'shows them a list of all stations that match the query' do
      visit '/'
      fill_in "q", with: "80206"
      click_button "Locate"
      
      expect(page).to have_content("Stations")
    end
  end
end

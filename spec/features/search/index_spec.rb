require 'rails_helper'

feature "Seach Index Page" do
  describe 'after a user types in a zip code and hits enter' do
    it 'shows them a list of all stations that match the query' do
      visit root_path

      fill_in "q", with: "80206"

      click_button "Locate"

      expect(page).to have_content("Stations")
    end

    it 'shows them the closest 15 stations within 5 miles sorted by distance' do
      visit root_path
      fill_in "q", with: "80206"
      click_button "Locate"

      expect(page).to have_content("Closest Stations")
    end
  end
end

require 'rails_helper'

feature "User can visit root page" do
  it 'and when they enter a zip code and hit enter redirects them to the /search path' do
      visit '/'
      expect(page).to have_selector("input[value='Search by zip...']")

      fill_in "q", with: "80203"
      click_button "Locate"

      save_and_open_page
      expect(current_path).to eq(search_path)
  end
end

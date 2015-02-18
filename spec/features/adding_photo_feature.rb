require 'rails_helper'

feature 'Adding photo' do
  context'when logged in' do

    scenario "should be able to add photo of receipt to expenses" do
      visit '/expenses/new'
      expect(page).to have_content('Add photo receipt')
    end
  end

end
require 'rails_helper'

feature 'Expenses' do

  context 'when logged in' do

    scenario 'should show a link for making a expenses' do
      visit '/expenses'
      expect(page).to have_link("Add Expense")
    end

    scenario 'they should see that post and their username should be displayed' do
      visit '/expenses'
      click_link 'Add Expense'
      fill_in 'Content', with: 'Hey everyone come see my post'
      fill_in 'Content', with: 'Hey everyone come see my post'
      fill_in 'Content', with: 'Hey everyone come see my post'
      fill_in 'Content', with: 'Hey everyone come see my post'
      fill_in 'Content', with: 'Hey everyone come see my post'
      fill_in 'Content', with: 'Hey everyone come see my post'
      click_button 'Create Expense'
      expect(page).to have_content("Hey everyone come see my post")
      expect(page).to have_content("by test@example.com")
      expect(current_path).to eq "/expenses"
    end

  end

end

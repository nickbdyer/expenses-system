require 'rails_helper'

feature 'Expenses' do

  context 'when logged in' do

    scenario 'should show a link for making a expenses' do
      visit '/'
      expect(page).to have_link("Add Expense")
    end

    scenario 'they should see that post and their username should be displayed' do
      visit '/'
      click_link 'Add Expense'
      expect(current_path).to eq('/expenses/new')
      fill_in 'Date', with: '30 10 2014'
      fill_in 'Category', with: 'Dinner'
      fill_in 'Project', with: 'Hey everyone come see my post'
      fill_in 'Pariticipans', with: 'Sam Tansaku'
      click_button 'Create and add new Expense'
      expect(current_path).to eq "/expenses/new"
    end

    scenario 'they should see that post and their username should be displayed' do
      visit '/'
      click_link 'Add Expense'
      expect(current_path).to eq('/expenses/new')
      fill_in 'Date', with: '30 10 2014'
      fill_in 'Category', with: 'Dinner'
      fill_in 'Project', with: 'Hey everyone come see my post'
      fill_in 'Pariticipans', with: 'Sam Tansaku'
      click_button 'Submit and view claims'
      expect(current_path).to eq "/claims"
    end



  end

end

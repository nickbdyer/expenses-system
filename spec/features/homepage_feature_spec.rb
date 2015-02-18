require 'rails_helper'

describe "The Homepage" do

  scenario "be able to add new expense" do
    visit "/"
    click_on "Add New Expense"
    expect(current_path).to eq new_expense_path
  end

  scenario "View all claims" do 
    visit '/'
    click_on 'View claims'
    expect(current_path).to eq claim_path
  end
end

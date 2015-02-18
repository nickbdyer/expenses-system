require 'rails_helper'

describe "The Homepage" do

  scenario "I can choose to add an expense" do
    visit "/"
    click_button "Add New Expense"
    expect(current_path).to equal "/expenses/new"
  end
end

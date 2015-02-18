feature 'Claims' do

  context 'when a expense exists' do

    before do
      add_expense("Hey check this out!")
    end

    let!(:claim){Claim.find_by(content: '')}

    scenario 'should show the posts' do
      visit '/expenses'
      expect(page).to have_content("Hey check this out!")
      expect(page).not_to have_content("There are no posts yet")
    end
  end

end

feature "Player Names" do
  scenario "Players enter their names and they are displayed" do
    visit('/')
    fill_in 'player1', with: 'Ben'
    fill_in 'player2', with: 'Bhups'
    click_button "Submit"
    expect(page).to have_content 'Ben vs. Bhups'
  end
end

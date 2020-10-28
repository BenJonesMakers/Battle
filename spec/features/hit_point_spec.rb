feature 'display hit points' do
  scenario "show player 2's hit points" do
    visit('/')
    fill_in 'player1', with: 'Ben'
    fill_in 'player2', with: 'Bhups'
    click_button "Submit"
    expect(page).to have_content "Bhups: 60HP"
  end
end

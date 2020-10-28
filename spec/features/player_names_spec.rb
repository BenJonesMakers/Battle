feature "Player Names" do
  scenario "Players enter their names and they are displayed" do
    sign_in_and_play()
    expect(page).to have_content 'Ben vs. Bhups'
  end
end

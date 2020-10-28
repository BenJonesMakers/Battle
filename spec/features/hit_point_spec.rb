feature 'display hit points' do
  scenario "show player 2's hit points" do
    sign_in_and_play()
    expect(page).to have_content "Bhups: 60HP"
  end

end

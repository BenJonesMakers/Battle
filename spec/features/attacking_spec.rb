feature 'Attacking Player 2' do
  scenario 'player 1 can attack player 2' do
    sign_in_and_play()
    click_button('Attack')
    expect(page).to have_content 'Ben attacked Bhups'
  end

  scenario 'the attack reducea HP of player 2' do
    sign_in_and_play()
    click_button('Attack')
    click_link( 'OK')
    expect(page).not_to have_content "Bhups: 60HP"
    expect(page).to have_content "Bhups: 50HP"
  end
end

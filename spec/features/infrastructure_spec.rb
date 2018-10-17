feature Battle do
  scenario 'two names are entered and showed on screen' do
    sign_in("Felix", "Ray")
    expect(page).to have_content "Felix 60 Ray 60"
  end

  scenario 'two different names are entered and showed on screen' do
    sign_in("Jack", "Jimmy")
    expect(page).to have_content "Jack 60 Jimmy 60"
  end

  scenario 'player1 attack takes 10 damage off player 2' do
    sign_in("Jack", "Jimmy")
    click_button 'Attack'
    expect(page).to have_content "Jack 60 Jimmy 50"
  end
end

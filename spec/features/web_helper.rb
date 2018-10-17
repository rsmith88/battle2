def sign_in(playerA, playerB)
  visit '/'
  fill_in('playerA', with: playerA)
  fill_in('playerB', with: playerB)
  click_button 'Submit'
end

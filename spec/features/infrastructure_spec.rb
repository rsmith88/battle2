feature 'Infrastructure' do
  scenario 'checking correct text on homepage' do
    visit '/'
    expect(page).to have_content('Hello Battle!')
  end
end

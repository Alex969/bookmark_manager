feature 'adding a new bookmark' do
  scenario 'A user can add a bookmark to the manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    click_button('Submit')

    expect(page).to have_content('http://example.org')
  end
end 

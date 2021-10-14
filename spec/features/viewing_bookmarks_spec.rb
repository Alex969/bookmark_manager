feature 'Viewing bookmarks' do
  scenario 'visiting index' do
    visit('/')

    expect(page).to have_content "Bookmark Manager"
    
  end

  scenario 'user can see the bookmarks' do
    Bookmark.create(url: "http://www.google.com")
    Bookmark.create(url: "http://www.amazon.com")
    Bookmark.create(url: "http://www.twitter.com")

    visit('/bookmarks')

    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.amazon.com"
    expect(page).to have_content "www.twitter.com"

  end
end

feature 'Viewing bookmarks' do
  scenario 'visiting index' do
    visit('/')

    expect(page).to have_content "Bookmark Manager"
    
  end

  scenario 'user can see the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.amazon.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');")

    visit('/bookmarks')

    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.amazon.com"
    expect(page).to have_content "www.twitter.com"

  end
end

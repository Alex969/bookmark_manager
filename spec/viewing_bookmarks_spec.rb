feature 'Viewing bookmarks' do
    scenario 'visiting index' do
        visit('/')
        expect(page).to have_content "Bookmark Manager"
    end
end
require 'pg'

feature 'Add new bookmark' do
  scenario 'User can save new bookmark to Bookmark Manager' do
    visit '/bookmarks/new'
    fill_in('url', with: 'www.wikipedia.com')
    click_button 'Save bookmark'
    expect(page).to have_content 'www.wikipedia.com'
  end
end

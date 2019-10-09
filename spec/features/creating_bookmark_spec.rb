require 'pg'

feature 'Create a new bookmark' do
  scenario 'User can save new bookmark to Bookmark Manager' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button 'Save bookmark'
    expect(page).to have_link('Test Bookmark', href: 'http://testbookmark.com')
  end
end

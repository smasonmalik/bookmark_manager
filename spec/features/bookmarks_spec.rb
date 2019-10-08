require 'pg'

feature 'Visiting bookmarks' do
  scenario 'User can see bookmarks' do

    Bookmarks.create(url: 'www.facebook.com')
    Bookmarks.create(url: 'www.cartoonnetwork.com')
    Bookmarks.create(url: 'www.google.com')

    visit '/bookmarks'

    expect(page).to have_content 'www.facebook.com'
    expect(page).to have_content 'www.cartoonnetwork.com'
    expect(page).to have_content 'www.google.com'
  end

  scenario 'User can add bookmarks' do
    visit '/bookmarks'
    expect(page).to have_button 'Add bookmark'
  end

end

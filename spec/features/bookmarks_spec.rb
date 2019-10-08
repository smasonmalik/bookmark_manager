require 'pg'

feature 'Visiting bookmarks' do
  scenario 'User can see bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'www.facebook.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.cartoonnetwork.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'www.google.com');")

    visit '/bookmarks'

    expect(page).to have_content 'www.facebook.com'
    expect(page).to have_content 'www.cartoonnetwork.com'
    expect(page).to have_content 'www.google.com'
  end
end

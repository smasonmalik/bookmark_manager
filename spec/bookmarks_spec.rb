require 'bookmarks'

describe Bookmarks do

  describe '.all' do
    it 'should return a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.facebook.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.cartoonnetwork.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.google.com');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include 'www.facebook.com'
      expect(bookmarks).to include 'www.google.com'
      expect(bookmarks).to include 'www.cartoonnetwork.com'
    end
  end

  



end

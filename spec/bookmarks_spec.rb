require 'bookmarks'

describe Bookmarks do

  describe '#all' do
    it 'should return a list of bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include('www.bbc.co.uk/sport')
      expect(bookmarks).to include('www.miniclip.com')
      expect(bookmarks).to include('www.cartoonnetwork.com')
    end
  end



end

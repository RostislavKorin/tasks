require 'rspec'
require 'task3'

describe FriendsCounter do 
  describe 'count' do
    it 'counts' do
      expect(
        FriendsCounter.count(3,1,[
          [0,1,0],
          [1,0,1],
          [0,1,0]
        ])
      ).to eq(2)

      expect(
        FriendsCounter.count(5,2,[
          [0,0,0,0,0],
          [0,0,1,0,0],
          [0,1,0,0,1],
          [0,0,0,0,1],
          [0,0,1,1,0]
        ])
      ).to eq(3)
    end
  end
end
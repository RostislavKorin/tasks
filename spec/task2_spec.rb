require 'rspec'
require 'task2'

describe TimeCounter do 
	describe 'count' do
		it 'counts' do
			expect(TimeCounter.count(4,1,1)).to eq(3)
      expect(TimeCounter.count(5,1,2)).to eq(4)
      expect(TimeCounter.count(2,1,2)).to eq(2)
      expect(TimeCounter.count(10,1,9)).to eq(10)
		end
	end
end
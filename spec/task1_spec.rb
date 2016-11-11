require 'rspec'
require 'task1'

describe PresentsCounter do 
	describe 'count' do
		it 'counts' do
			 expect(PresentsCounter.count(10,25,15,40)).to eq(3)
       expect(PresentsCounter.count(10,0,0,30)).to eq(1)
       expect(PresentsCounter.count(20,10,0,40)).to eq(6)
       expect(PresentsCounter.count(10,10,20,50)).to eq(3)
		end
	end
end
require 'rspec'
require 'task2'

describe TimeCounter do 
	describe 'count' do
		it 'counts' do
			 #expect(TimeCounter.count(4,1,1)).to eq(3)
       expect(TimeCounter.count(5,1,2)).to eq(4)
		end
	end
end
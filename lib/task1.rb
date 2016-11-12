class PresentsCounter
	def self.count(x,y,z,w)
	  a = [x,y,z]
	  max_arrays = (w / a.find_all{|i| i > 0}.min).to_i #find max number of gifts
	  result = 0
	  for i in 1..max_arrays do
	     result += a.repeated_combination(i) # find all possible combinations
                  .map{|a| a.inject(0){|sum, p| sum += p }} # calculate sum of weights
                  .find_all{|s| s == w}.size # search for proper weigh
	     i+=1
	  end
	  result
	end
end

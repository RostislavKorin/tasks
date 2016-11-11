class PresentsCounter
	def self.count(x,y,z,w)
	  a = [x,y,z]
	  max_arrays = (w / a.find_all{|i| i > 0}.min).to_i #find max number of gifts  
	  i = 0
	  result = 0
	  while i < max_arrays do 
	     result += a.repeated_combination(i+1).to_a.sort.uniq.map{|a| a.inject(0){|sum, p| sum += p }}.find_all{|s| s == w}.size
	     i+=1
	  end
	  result
	end
end

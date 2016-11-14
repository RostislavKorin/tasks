class FriendsCounter
  def self.count(_n,s,m)
    friends = Array.new(m.size) # array of all workers of sloboda
    for i in 0..(m.size-1)
      friends[i] ||= []
      for j in 0..(m[i].size-1)
        if m[i][j] == 1 # i is a friend to j
          friends[i] << j unless friends[i].include?(j) # we need to add j to friendship array of i unless it is already there
          friends[j] ||= []
          friends[j] << i unless friends[j].include?(i) # we need to add i to friendship array of j unless it is already there
          # we need to add to i all friends of j, unless it`s already there
          friends[j].each do |friend_id|  
            friends[i] << friend_id if !friends[i].include?(friend_id) && friend_id != i
          end
        end
      end
      # for each new friend of i we add i
      friends[i].each do |friend_id|
        friends[friend_id] << i if !friends[friend_id].include?(i) && friend_id != i
      end
    end
    # count amount of friends for worker number s
    friends[s].size
  end
end 
 
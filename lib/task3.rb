class FriendsCounter
  def self.count(n,s,m)
    friends = Array.new(m.size)
    for i in 0..(m.size-1)
      friends[i] ||= []
      for j in 0..(m[i].size-1)
        if m[i][j] == 1
          friends[i] << j unless friends[i].include?(j) 
          friends[j] ||= []
          friends[j] << i unless friends[j].include?(i)
          friends[j].each do |friend_id|
            friends[i] << friend_id if !friends[i].include?(friend_id) && friend_id != i
          end
    
        end
        friends[i].each do |friend_id|
          friends[friend_id] << i if !friends[friend_id].include?(i) && friend_id != i
        end
      end
    end
    friends[s].size
  end
end 
 
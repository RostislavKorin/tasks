class TimeCounter
  
  def self.count(n,x,y)
    
    if x > y
      x,y = y,x
    end
    time = x
    puts time
    #nod = x.gcd(y)
    
    temp1 = (y/x + 1)
    
    time += ((n-1)/temp1)#*nod
    puts time
    n = (n-1) % temp1
    puts n
    temp1 = 0
    temp2 = 0
    while n > 0
      temp1+=1
      temp2+=1
      time+=1
      puts time
      if temp1 >= x
        n-=1
        temp1 = (temp1 % x)
      elsif temp2 >= y
        n-=1
        temp2 = (temp2 % y)
      end 
    end
    time
  end
end

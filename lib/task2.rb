class TimeCounter
  
  def self.count(n,x,y)
    # search for fastest printer
    x,y = y,x if x > y
    # first page time
    time = x
    n -= 1
    x_time_for_one_page = 0
    y_time_for_one_page = 0
    # for every page wich left we calculate fastest way to print
    while n > 0
      x_time_for_one_page += 1
      y_time_for_one_page += 1
      time += 1 
      if x_time_for_one_page >= x
        n -= 1
        x_time_for_one_page = 0
      end
      if y_time_for_one_page >= y
        n -= 1
        y_time_for_one_page = 0
      end 
    end
    time
  end
end

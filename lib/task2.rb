class TimeCounter
  
  def self.count(n,x,y)
    # search for fastest printer
    x,y = y,x if x > y
    # first page time
    time = x
    n -= 1
    # system printing temp
    system_speed = (y / x + 1)
    # time for major work
    time += (n / system_speed) * y
    # last pages
    n = n % system_speed
    # job left should be done with fastests
    x_time_for_one_page = 0
    y_time_for_one_page = 0
    # for every page wich left we calculate fastest way to print
    while n > 0
      x_time_for_one_page += 1
      y_time_for_one_page += 1
      time += 1 
      if x_time_for_one_page >= x
        n -= 1
        x_time_for_one_page = (x_time_for_one_page % x)
      elsif y_time_for_one_page >= y
        n -= 1
        y_time_for_one_page = (y_time_for_one_page % y)
      end 
    end
    time
  end
end

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
    x_speed = 0
    y_speed = 0
    # for every page wich left we calculate fastest way to print
    while n > 0
      x_speed += 1
      y_speed += 1
      time += 1 
      if x_speed >= x
        n -= 1
        x_speed = (x_speed % x)
      elsif y_speed >= y
        n -= 1
        y_speed = (y_speed % y)
      end 
    end
    time
  end
end

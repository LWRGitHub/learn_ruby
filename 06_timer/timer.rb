class Timer
  attr_accessor :seconds
  def initialize
    seconds = 0
    @seconds = seconds
  end
  def time_string
    @seconds = seconds
    min_00 = 00
    hr_00 = 00
    sec_00 = @seconds
    if @seconds == 0
       zeros = "00:00:00"
      return zeros
    end
    while @seconds >= 60
      @seconds = @seconds - 60
      min_00 = min_00 + 1
      if min_00 >= 60
        min_00 = min_00 - 60
        hr_00 = hr_00 + 1
      end
      sec_00 = @seconds
    end
    min_00 = min_00.to_s
    hr_00 = hr_00.to_s
    sec_00 = sec_00.to_s
    if min_00.length <= 1
      min_00 = "0" + min_00
    end
    if hr_00.length <= 1
      hr_00 = "0" + hr_00
    end
    if sec_00.length <= 1
      sec_00 = "0" + sec_00
    end
    return hr_00 + ":" + min_00 + ":" + sec_00
  end
end






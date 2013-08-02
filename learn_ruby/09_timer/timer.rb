class Timer
  attr_accessor :seconds 
  # class instances are initialized to 0 seconds
  #
  def initialize
    @seconds = 0
  end
  # returns the timer as a string
  # in this format -> 00:00:00
  # 
  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    secs = (@seconds % 3600) % 60
    
    sprintf("%02d:%02d:%02d", hours, minutes, secs)
  end
end

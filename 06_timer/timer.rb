class Timer
  #write your code here
  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  attr_reader :hours, :minutes, :seconds

  def seconds=(seconds)
    @hours = seconds/3600
    @minutes = (seconds % 3600)/60
    @seconds = seconds % 60
  end

  def time_string
    String(@hours).rjust(2, "0") + ":" + String(@minutes).rjust(2, "0") + ":" + String(@seconds).rjust(2, "0")
  end

end

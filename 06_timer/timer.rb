class Timer
    #getter/setter mehthod
    attr_accessor :seconds, :minutes, :hours

    def seconds
    @seconds = 0
    end
    
    def time_string 
      calc_time
      display_as_string(@hours ,@minutes, @seconds)
    end
    
    def padded number
      check_length(number)
    end
      

    def calc_time
      if(@seconds >= 60 && @seconds <= 3600)
        temp = @seconds
        @seconds = @seconds % 60.0
        @minutes = temp / 60.0
      else
        temp = @seconds
        @seconds = @seconds % 60.0
        @minutes = (temp / 60.0) % 60
        @hours = temp / 3600
      end
    end

    def display_as_string hours, minutes, seconds
      seconds_string = check_length(seconds)
      minutes_string = check_length(minutes)
      hours_string = check_length(hours)

      string_to_return = hours_string.concat(":", minutes_string,":", seconds_string)
    end

    def check_length length_to_check
      string_to_return = ""
      new_lenth = length_to_check.to_i

      if(new_lenth <= 10)
        string_to_return = string_to_return + "0" + new_lenth.to_s
      else
        string_to_return =new_lenth.to_s
      end

      string_to_return
    end

end

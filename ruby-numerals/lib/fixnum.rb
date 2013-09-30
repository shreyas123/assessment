class Fixnum
  include Digits
  include Number
  def convert_to_string
    return process(self, self)
  end
  
  private
  
  def process(int_input, original_input)
    input = int_input.to_s.split(//)
    length = input.length
    return_value = ""
    max_digit = get_max_digit(length) 

    if max_digit != 0
      next_int = ""
      total_digit = check_digit(length)

      if original_input < 2000  and original_input > 999
        total_digit = total_digit + 1 
        max_digit = max_digit - 1
      end

      total_digit.times do |i|
        next_int += input[i]
      end

      total_digit.times do |i|
        input.delete_at(0)
      end

      next_int = next_int.to_i
      return_value = process(next_int, original_input)
      return_value += " " + get_digit_value(max_digit) if get_digit_value(max_digit)

      join = " "
      join = " and " if input.join("").to_i <= 99 

      val = process(input.join("").to_i, original_input)
      return_value += join + val if val
    else

      return_value = get_number_value(int_input)
      if return_value == nil && length > 1
        return_value = get_number_value((input[0] + "0").to_i)
        return_value += "-" + get_number_value(input[1].to_i) if get_number_value(input[1].to_i)
      end
    end
    return return_value
  end
end
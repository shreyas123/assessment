require 'read_yaml_file'

module Digits
  include ReadYamlFile

  def check_digit(check_digit)
    min = get_max_digit(check_digit)
    return check_digit + 1 - min
  end
  
  def get_max_digit(check_max_digit)
    digits = load_digits_yaml.keys.sort
    min = 0
    digits.each do |digit|
      min  = digit if digit <= check_max_digit
    end
    return min
  end
  
  def get_digit_value(digit)
    return load_digits_yaml[digit] || ''
  end
  
  private
  def load_digits_yaml
    @digits ||= read_yaml_file("digits.yml")
  end
  
end
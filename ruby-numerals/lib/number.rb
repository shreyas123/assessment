
module Number
  def get_number_value(key)
    load_number_yaml[key] || nil
  end
  
  private
  def load_number_yaml
    @numbers ||= read_yaml_file("numbers.yml")
  end
  
  
end
require 'yaml'

module ReadYamlFile
  def read_yaml_file(filename)
    return YAML::load_file("#{Rails.root}/config/#{filename}")
  end
end
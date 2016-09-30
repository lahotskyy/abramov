require 'yaml'
module Func
  def self.int_sqrt(numb)
    doubl = Math.sqrt(numb)
    integ = doubl.to_int
    doubl == integ
  end

  def self.parse_yaml(file)
    thing = YAML.load_file(file)
  end
end
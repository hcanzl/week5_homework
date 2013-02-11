$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)

require 'version'
require 'hello'

module TestGem

  puts "module TestGem defined"
  
  class MyFile
    def first input_file
      f = File.open(File.expand_path("../../spec/#{input_file}", __FILE__))
      first_line = f.gets
      f.close
      return first_line
    end
    
    def last input_file
      f = File.open(File.expand_path("../../spec/#{input_file}", __FILE__))
      lines = f.readlines
      f.close
      
      return lines[-1]
    end
  end

end
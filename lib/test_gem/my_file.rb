$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)

module TestGem
  
  class MyFile
    puts "class #{self} defined"
    
    def self.first input_file
      f = File.open input_file
      f.gets
    end
    
    def self.last input_file
      f = File.open input_file
      f.readlines[-1]
    end
    
  end
end
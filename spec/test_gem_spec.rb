$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem do

  subject { TestGem::MyFile.new }
  
  it { TestGem.should be_a Module }
  
  it "#first returns the first line of file" do
    first_line = subject.first "test_file.txt"
    first_line.should eq "The first line.\n"
  end
  
  it "#last returns the last line of file" do
    first_line = subject.last "test_file.txt"
    first_line.should eq "The last line."
  end
   
end
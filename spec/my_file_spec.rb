$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::MyFile do
  
  it { TestGem.should be_a Module }
  
  it "::first returns the first line of file" do
    first_line = TestGem::MyFile.first "./spec/test_file.txt"
    first_line.should eq "The first line."
  end
  
  it "::last returns the last line of file" do
    last_line = TestGem::MyFile.last "./spec/test_file.txt"
    last_line.should eq "The last line."
  end
   
end
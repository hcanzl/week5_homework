$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::MyFile do
  
  it "::first returns the first line of file" do
    first_line = TestGem::MyFile.first "test_file.txt"
    first_line.should eq "The first line.\n"
  end
  
  it "::last returns the last line of file" do
    last_line = TestGem::MyFile.last "test_file.txt"
    last_line.should eq "The last line."
  end
   
end
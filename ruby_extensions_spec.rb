require_relative 'ruby_extensions'

describe Array do
  it "should return a new array containing elements common to the two arrays with no duplicates" do
    a = [1,1,3,5]
    b = [1,2,3]
    result = a.intersection(b)

    result.should == [1,3]
  end
  
  it "should return a new array built by concatenating the two arrays together to produce a third array" do
    a = [1,2,3]
    b = [4,5]
    result = a.union(b)
    
    result.should == [1,2,3,4,5]
  end
  
  it "should include the end value for an inclusive range" do
    a = 0.inclusive(2)
    
    a.first.should == 0
    a.last.should == 2
    a.include?(1).should be_true
    a.include?(2).should be_true
  end
  
  it "should exclude the end value for an exclusive range" do
    a = 0...2
    
    a.first.should == 0
    a.last.should == 2
    a.include?(1).should be_true 
    a.include?(2).should be_false
  end
end
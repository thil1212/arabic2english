require_relative '../lib/arabic2english'

describe Arabic2english do

  it "Should support for 10^0" do
  	(Arabic2english::converter 5).should == 'five'
  end

  it "Should support for 10^1" do
  	(Arabic2english::converter 77).should == 'seventy seven'
  end


  it "should support for 10^2"
  it "should support for 10^3"
  it "should support for 10^4"
  it "should support for 10^5"
  it "should support for 10^6 is 1 million"
  it "should support for 10^7"
  it "should support for 10^8"
  it "should support for 10^9 is 1 billion"
  it "should support for 10^10 "
  it "should support for 10^11"
  it "should support for 10^12 is 1 trillion"

end

require_relative '../lib/arabic2english'

describe Arabic2english do

  it "Should support for 10^0" do
  	(Arabic2english::converter 5).should == 'five'
  end

  it "Should support for 10^1" do
  	(Arabic2english::converter 77).should == 'seventy seven'
  end

  it "should support for 10^2" do
    (Arabic2english::converter 501).should == 'five hundred one'
  end

  it "should support for 10^3" do 
    (Arabic2english::converter 9979).should == 'nine thousand nine hundred seventy nine'
  end

  it "should support for 10^4" do
    (Arabic2english::converter 99999).should == 'ninety nine thousand nine hundred ninety nine'
  end

  it "should support for 10^5" do
    (Arabic2english::converter 112145).should == 'one hundred twelve thousand one hundred forty five'
  end
  it "should support for 10^6 is 1 million" do
  	
  end

  it "should support for 10^7"
  it "should support for 10^8"
  it "should support for 10^9 is 1 billion"
  it "should support for 10^10 "
  it "should support for 10^11"
  it "should support for 10^12 is 1 trillion"

end

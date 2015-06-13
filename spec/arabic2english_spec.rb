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
  	(Arabic2english::converter 2109999 ).should == 'two million one hundred nine thousand nine hundred ninety nine'
  end

  it "should support for 10^7" do
    (Arabic2english::converter 11111999 ).should == 'eleven million one hundred eleven thousand nine hundred ninety nine'
  end

  it "should support for 10^8" do
  	 (Arabic2english::converter 111119990 ).should == 'one hundred eleven million one hundred nineteen thousand nine hundred ninety'
  end

  it "should support for 10^9 is 1 billion" do
   (Arabic2english::converter 1000000000 ).should == 'one billion '
  end

  it "should support for 10^10 " do
  	(Arabic2english::converter 11100000000 ).should == 'eleven billion one hundred  million '
  end
  it "should support for 10^11" do
  	(Arabic2english::converter 110000000000 ).should == 'one hundred ten billion '
  end

  it "should support for 10^12 is 1 trillion" do
  	(Arabic2english::converter 1001001100000 ).should == 'one trillion one billion one million one hundred  thousand '
  end

  it "should support for 10^15 is 1 quadrillion" do
  	(Arabic2english::converter 1000000000000000 ).should == 'one quadrillion '
  end

  it "should support for 10^18 is 1 quintillion" do
  	(Arabic2english::converter 1000000000000000000 ).should == 'one quintillion '
  end

  it "should support for 10^21 is 1 quintillion" do
  	(Arabic2english::converter 1000000000000000000000 ).should == 'one sextillion '
  end

end

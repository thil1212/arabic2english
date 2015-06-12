require "arabic2english/version"

module Arabic2english
  @required_numerals = Hash[1=>:one, 2=>:two, 3=>:three, 4=>:four, 5=>:five, 6=>:six, 7=>:seven, 8=>:eight, 
                                    9=>:nine, 10=> :ten,11=>:eleven, 12=> :tweleve, 13=>:thirteen, 14=>:fourteen, 
                                    15=>:fifteen, 16=>:sixteen, 17=> :seventeen, 18=>:eighteen, 19=>:nineteen, 20=>:tweenty,
                                    30=>:thireety, 40=>:fourty, 50=>:fifty, 60=>:sixty,70=>:seventy, 80=>:eighty, 90=>:ninety,
                                    100=>:hundred, 1000=>:thousand, 10**6=>:milion, 10**9=> :bilion, 10**12=> :trilion]


 
 def self.converter (arabic_numbers)
 	 no_of_digits = arabic_numbers.to_s.split('').length - 1

 	 case no_of_digits

 	   when 0 
 	    return @required_numerals[arabic_numbers].to_s;

 	   when 1
 	   when 2
 	   when 3
 	   when 4
 	   when 5
 	   when 6
 	   when 7
 	   when 8

 	 end

 end


end


require "arabic2english/version"

module Arabic2english
  @required_numerals = Hash[1=>:one, 2=>:two, 3=>:three, 4=>:four, 5=>:five, 6=>:six, 7=>:seven, 8=>:eight, 
                                    9=>:nine, 10=> :ten,11=>:eleven, 12=> :twelve, 13=>:thirteen, 14=>:fourteen, 
                                    15=>:fifteen, 16=>:sixteen, 17=> :seventeen, 18=>:eighteen, 19=>:nineteen, 20=>:twenty,
                                    30=>:thirty, 40=>:forty, 50=>:fifty, 60=>:sixty,70=>:seventy, 80=>:eighty, 90=>:ninety,
                                    100=>:hundred, 1000=>:thousand, 10**6=>:million, 10**9=> :billion, 10**12=> :trillion]


 
 def self.converter (arabic_numbers)
 	 no_of_digits = arabic_numbers.to_s.split('').length - 1

 	 case no_of_digits
 	   when 0 
 	     @required_numerals[arabic_numbers].to_s;
 	   when 1
        if arabic_numbers % 10 == 0 ||  arabic_numbers < 20
        	@required_numerals[arabic_numbers].to_s 
        else
        	reminder = arabic_numbers % 10;
        	@required_numerals[arabic_numbers - reminder].to_s + " "+converter(reminder)
        end
 	   when 2
        	reminder = arabic_numbers % 100;
        	@required_numerals[(arabic_numbers - reminder)/100].to_s + " hundred "+  converter(reminder)
 	   when 3
 	   	    reminder = arabic_numbers % 1000;
        	@required_numerals[(arabic_numbers - reminder)/1000].to_s + " thousand "+  converter(reminder)
 	   when 4
 	      	reminder = arabic_numbers % 1000;
        	converter((arabic_numbers - reminder)/1000) + " thousand "+  converter(reminder)
 	   when 5
 	   	    reminder = arabic_numbers % 1000;
        	converter((arabic_numbers - reminder)/1000) + " thousand "+  converter(reminder)

 	   when 6
 	   when 7
 	   when 8

 	 end

 end


end


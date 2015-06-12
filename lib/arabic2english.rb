#require "arabic2english/version"

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
 	   when 3, 4, 5
 	   	    reminder = arabic_numbers % 1000;
        	converter((arabic_numbers - reminder)/1000) + " thousand "+  converter(reminder)
 	   when 6, 7, 8
          reminder = arabic_numbers % 10**6;
        	converter((arabic_numbers - reminder)/10**6) + " million "+  converter(reminder)
     when 9,10,11
     	    reminder = arabic_numbers % 10**9;
        	converter((arabic_numbers - reminder)/10**9) + " billion "+  converter(reminder)
     when 12,13,14
     	    reminder = arabic_numbers % 10**12;
        	converter((arabic_numbers - reminder)/10**12) + " trillion "+  converter(reminder)
     when 15,16,17
     	    reminder = arabic_numbers % 10**15;
        	converter((arabic_numbers - reminder)/10**15) + " quadrillion "+  converter(reminder)
     when 18,19,20
     	    reminder = arabic_numbers % 10**18;
        	converter((arabic_numbers - reminder)/10**18) + " quintillion "+  converter(reminder)
     else 
     	    reminder = arabic_numbers % 10**21;
        	converter((arabic_numbers - reminder)/10**21) + " sextillion "+  converter(reminder)

 	 end

 end


end

if ARGV.length > 0
  puts Arabic2english::converter(ARGV[0].to_i)
else
	puts "Command line argument is missing!"
end
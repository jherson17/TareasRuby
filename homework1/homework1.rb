PI = 3.1416;

loop do

  puts "Select an option
  1. Circle
  2. Triangle
  3. Square
  4. Rectangle
  5. Trapezium
  0. exit";

  option = gets.to_i;

  case option;
  when 1
      figure = "circle"
      puts "Enter the radius";
      radius = gets.to_f;
      result =  PI * (radius ** 2);
      puts "The area of the  #{figure} is #{result} " ;

  when 2
      figure = "triangle";
      puts "Enter the width";
      width = gets.to_f;
      puts "Enter the high";
      high =  gets.to_f;
      result = 0.5 * (width * high);
      puts "The area of the  #{figure} is #{result} " ;

  when 3
      figure = "square";
      puts "Enter the high";
      high = gets.to_f;
      result = high ** 2;
      puts "The area of the  #{figure} is #{result} " ;

  when 4
      figure = "rectangle"
      puts "Enter the high";
      high = gets.to_f;
      puts "Enter the width";
      width = gets.to_f;
      result = high * width;
      puts "The area of the  #{figure} is #{result} " ;

  when 5
      figure = "trapezium";
      puts "Enter the width 1";
      width1 = gets.to_f;
      puts "Enter the width 2";
      width2 = gets.to_f;
      puts "Enther the high";
      high = gets.to_f;
      result = 0.5 * (width1 + width2) * high;
      puts "The area of the  #{figure} is #{result} " ;

  when 0
      puts "see you later!!"
  else
    puts "There is no that option, try again";

  end

  if option == 0
   break
  end


 end

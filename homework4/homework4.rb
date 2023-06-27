#Write a function that receives a integer number as a parameter and
#writes in the screen if its an even or an odd number.
def par_impar(numero)
  if numero % 2 == 0
    puts "el numeroe es par"
  else
    puts "el numeroe es impar"
  end
end
#Write a function that returns the factorial of a given number, using
#iteration.
def factorial(numero)
  factoriales= 1
  (1..numero).each do |x|  factoriales = factoriales * x
  end
  return "el factorial es #{factoriales}"
end
#Write a function that returns the factorial of a given number, using
#recursion.
def factorial_recurcion(numero)
  if (0..1).include?(numero)
    return 1
  end
  #profe porque necesite el if de arriba para que funcionase
  return numero * factorial_recurcion(numero - 1)
end
#Write a function that returns true if a given number is prime, and false
#otherwise.
def is_prime(number)
  if number <= 1
    return false
  end

  (2..Math.sqrt(number)).each do |divisor|
    if number % divisor == 0
      return false
    end
  end
  return true
end
#Write a function that receives a string and an integer number,
#returning an array which contains the words of that string whose size is
#greater that the received number.
def array(string, number)
  lista=string.split
  listaNueva= []
  lista.each do |x|
    if x.length > 5
      listaNueva.push(x)
    end
  end
  return "lista #{listaNueva}"
end

sentencia= "Nadie silva como Silvio silva, porque si alguien silvara como Silvio silva, sería un gran silvador"

puts "escribe un numero"
x= gets.chop.to_i
par_impar(x)
puts factorial(x)
puts factorial_recurcion(x)
puts "Is number prime: #{is_prime(x)}"
puts array(sentencia, 5)



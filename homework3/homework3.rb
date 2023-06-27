# imprime del 1 al 100
#x = 1
#until x > 100
#  puts x
#  x = x + 1
#end

#(1..100).each do |x|
#  puts "#{x}"
#end


# factorial del numero dado
#puts "pon el nombre que quieras sacar el factorial "
#x = gets.chop.to_i
#factorial = 1
#for i in 1..x
#    factorial = factorial * i
#    puts factorial
#end

#Write a program that iterates over a string (paragraph) and prints:
#1. The shortest word.
#2. The longest work.
#3. The palindromes present in the paragraph.
def shortest(parrafos)
  lista=parrafos.split
  puts "menor #{lista.min}"
end

def longest(parrafos)
  lista=parrafos.split
  puts "mayor #{lista.max}"
end

def palindormes(parrafos)
	# Voltear y comprobar si es igual a la original
	parrafos  === parrafos.reverse
end

puts "escribe un parrafo"
parrafo= gets.chop

shortest(parrafo)
longest(parrafo)
parrafo.split.each{ |palabra| puts "¿'#{palabra}' es un palíndromo? #{palindormes(palabra)}"}





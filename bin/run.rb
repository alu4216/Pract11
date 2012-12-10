require "~/LPP/Pract11/alu4216_lamda/lib/alu4216_lamda/lamda.rb"
 include  ULL::ETSII::AluXXX::LambdaRegexp


#puts "introduce una expresion" 
#STDOUT.flush
#e = gets.chomp
e=seq(char('c'),seq(plus(alt(char('a'),char('d'))),char('r')))

puts "Introduce una cadena para la expresion"
STDOUT.flush  
cadena = gets.chomp 

resto=e[cadena]
puts "La cadena es '#{cadena}' y la expresion es e=seq(char('c'),seq(plus(alt(char('a'),char('d'))),char('r'))) -> el resto es : '#{resto}'"
	






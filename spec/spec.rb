
require "~/LPP/Pract11/alu4216_lamda/lib/alu4216_lamda/lamda.rb"


include ULL::ETSII::AluXXX::LambdaRegexp

e=seq(char('c'), char('d'))
s='cdd'                                          #funciona la lambda seq y char
resto=e[s]
puts" Cadena cdd. Expresion c.d (c concatenado con d),resto -> '#{resto}'"


##########################################
e=star(char('c'))
s='cccddeee'                                    #funciona la lambda star
resto =e[s]
puts "Cadena cccddeee. Expresion c*,resto ->'#{resto}'"
#########################################

e= seq(star(char('c')),star(char('d')))
s='ccccdddddajaaa'                              #combinadas las tres lambdas
resto=e[s]
puts "Cadena ccccddddddajaaa.Expresion c*.d*, resto ->{resto}'"
###########################################

e=alt(star(char('f')),star(char('g')))
s='ffffff'
resto=e[s]                                      #funciona lambda alt 

puts "Cadena fffffff. Expresion f*|g* -> '#{resto}'. No debe devolver nada poque acepta la cadena en su totalidad"
##########################################

e=seq(char('c'),seq(plus(alt(char('a'),char('d'))),char('r')))

##########################################

e=seq(char('c'),seq(plus(alt(char('a'),char('d'))),char('r')))
s='caaadddar'
e[s]
resto=e[s]
puts "Cadena caaadddar. Expresion c(a|d)+r,resto -> No debevolver nada'#{resto}'"






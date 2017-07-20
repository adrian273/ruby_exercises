=begin
    @Leer un numero y generar los impares siguientes hasta el 100
=end

puts 'Ingrese numero'
number = gets.chomp.to_i
mod = number % 2

if mod == 0
  number -= 1
end

for i in 0..100
  number += 2
  if number < 100
    puts "#{number}"
  end
end

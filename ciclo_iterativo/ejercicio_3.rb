=begin
  @description: Leer, para una empresa de 50 trabajadores:
                  @horas trabajadas.
                  @valor Hora.
                  @numero de cargas.
                si el numero de cargas es 3 o mas, aumentar el sueldo en
                10%, si tiene 1 o 2 cargas, aumentar en 5% el sueldo. Calcular ->
                  @sueldo de cada trabajador
                  @total de sueldo que debe pagar la empresa
=end

EMPLOYEE = 50
salary_total = 0

for i in 1..EMPLOYEE
  puts 'Horas trabajadas'
  hour = gets.chomp.to_i
  puts 'Valor hora'
  value_hour = gets.chomp.to_i
  puts 'Cantidad cargas'
  cargo = gets.chomp.to_i
  salary = value_hour * hour
  if cargo >= 3
    salary *= 1.1
  elsif cargo == 1 or cargo == 2
    salary *= 1.05
  end
  salary_total += salary
  puts "El sueldo es $#{salary}"
end

puts "El total a pagar es $#{salary_total}"

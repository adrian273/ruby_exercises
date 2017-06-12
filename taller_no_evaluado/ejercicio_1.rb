=begin
@description: Crear un programa que tenga el siguiente menu:
      Menu
      1. Calcular Multiplicacion de A * B
      2. Calcular el Factorial
      @Utilizar funciones en cada calculo.
      @para el calculo de la multiplicacion de a * b, utilizar solo suma.

=end
class Ejercicio_1

  def main
    puts "Menu:"
    puts "1.. Multiplicacion"
    puts "2.. Calcular factorial"
    puts "3.. Salir"
    puts 'Ingresa tu opcion'
    option = gets.to_i
    case option
    when 1
      puts "el resultado es #{multiplication()}"
    when 2
      puts "factorial #{factorial()}"
    end
  end

  def multiplication
    adittion = 0
    puts 'Ingresa numero'
    number_1 = gets.to_i
    puts "Ingresa un numero"
    number_2 = gets.to_i
    for i in 1..number_1
      adittion += number_2
    end
    return adittion
  end

  def factorial
    number = gets.to_i
    fact = 1
    while number > 1
      fact *= number
      number -= 1
    end
    return fact
  end

end
e = Ejercicio_1.new
e::main

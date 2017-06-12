=begin
@descrition: Crear un programa que permita registrar en un arreglo el tiempo de llegada a la meta de un maraton, el programa debe contar con el sgte menu:
            -> tiempo Promedio de la maraton.
            -> Tiempo Mayor de la maraton.
            -> Tiempo menor de la maraton.
            -> Cuantos Competidores llegaron sobre el tiempo promedio (Despues de).
            ** la competencia conto con 25 participantes.
            {'author' : 'Adrian Verdugo' }
=end

class Ejercicio

  COUNT_PERSON = 5
  $person = []

  def add_person
    for i in 1..COUNT_PERSON
      puts "Ingrese tiempo de llegada"
      time = gets.to_i
      $person.push time
    end
  end

  def time_prom
    sum = 0
    $person.each { |e| sum += e }
    prom = sum / COUNT_PERSON
    return prom
  end

  def time_max
    $person.max
  end

  def time_min
    $person.min
  end

  def count_time_prom
    count_p = 0
    for time in 0..$person.length
      if $person[time].to_i > time_prom()
        count_p += 1
      end
    end
    return count_p
  end

  def main
    while true
      puts "------ MENU ------"
      puts "1.. Ver tiempo promedio de la maraton"
      puts "2.. Ver tiempo mayor de la maraton"
      puts "3.. Ver tiempo menor de la maraton"
      puts "4.. Ver cuantas personas llegaron sobre el promedio"
      puts "5.. Salir"
      puts "Ingresa opcion"
      op = gets.to_i
      case op
      when 1
        puts "El promedio de la maraton es #{time_prom()}"
      when 2
        puts "El tiempo mayor es : #{time_max}"
      when 3
        puts "El tiempo menor es : #{time_min}"
      when 4
        puts "Cantidad de personas que llegaron sobre el promedio #{count_time_prom}"
      when 5
        break
      end
    end
  end

end

e = Ejercicio.new
e::add_person
e::main

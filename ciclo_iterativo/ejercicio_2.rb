=begin
  @description: Leer notas y calcular
    @ Porcentaje de notas menores a 4.0
    @ Promedio de notass del curso
=end

puts "Ingrese cantidad de notas"
n_student = gets.chop.to_i
count_red = 0
count_note = 0

for i in 1..n_student
  puts "Ingrese nota"
  note = gets.chop.to_f
  if note < 4.0
    count_red += 1
  end
  count_note += note
end

por_note_red = count_red * 100 / n_student
prom_note = count_note / n_student

puts "Porcentaje de notas rojas : #{por_note_red}%"
puts "Promedio de notas: #{prom_note}"

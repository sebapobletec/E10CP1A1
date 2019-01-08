module Test
  def result
    promedio = (@nota1 + @nota2) / 2
    if promedio >= 4
      puts 'Estudiante aprobado'
    else puts 'Estuadiante reprobado'
    end
  end
end

module Attendance
  def student_quantity
    class_variable_get(:@@quantity)
  end

end

class Student
  @@quantity = 0
  include Test
  extend Attendance
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1.to_i
    @nota2 = nota2.to_i
    @@quantity += 1
  end
end

students = []
10.times do
students << Student.new('Juan', 4, 3)
end

puts students[0].result
puts Student.student_quantity

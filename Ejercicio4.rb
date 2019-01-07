module Semana
  @primer_dia = 'Lunes'

  def self.primerdia
    @primer_dia
  end

  def self.en_un_meses
   puts  "Un mes tiene 4 semanas."
  end

  def self.en_un_año
  puts  "Un año tiene 52 semanas"
  end
end

puts "La semana comienza el día #{Semana.primerdia}"
Semana.en_un_meses
Semana.en_un_año

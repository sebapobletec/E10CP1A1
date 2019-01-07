class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@counter = 0

  def initialize(model, year)
    super
    @@counter += 1
  end

  def self.counter
    puts @@counter
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

10.times do
  Car.new('Yaris','2009')
end

Car.counter

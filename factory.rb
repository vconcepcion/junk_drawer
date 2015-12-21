# Factory - setup interface for object creation, defer to subclasses

class Car
  attr_accessor :model

  def initialize(model)
    @model = model
  end

  def details
    "#{self.class} #{model}"
  end
end

class Acura < Car
  def details
    puts "#{super} is made in Japan."
  end
end

class BMW < Car
  def details
    puts "#{super} is made in Germany."
  end
end

class CarFactory
  def self.build(make, model)
    return Acura.new(model) if make == "Acura"
    return BMW.new(model) if make == "BMW"
  end
end

usedCar1 = CarFactory.build("Acura", "NSX")
usedCar1.details

usedCar2 = CarFactory.build("BMW", "135i")
usedCar2.details

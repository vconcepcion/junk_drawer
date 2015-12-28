# Builder - consistent object construction across multiple representations

class Media
  attr_accessor :base_material, :record_time, :lifespan

  def self.construct(builder_object)
    use_object = Object.const_get(builder_object).new

    use_object.build_step_one
    use_object.build_step_two
    use_object.build_step_three

    use_object
  end
end

class VHS < Media
  def build_step_one
    @base_material = "Plastic"
  end

  def build_step_two
    @record_time = "Two hours"
  end

  def build_step_three
    @lifespan = "One year"
  end
end

class DVD < Media
  def build_step_one
    @base_material = "Polycarbonate"
  end

  def build_step_two
    @record_time = "Eight hours"
  end

  def build_step_three
    @lifespan = "Five years"
  end
end
 
media1 = Media.construct(:VHS)
puts media1.inspect

media2 = Media.construct(:DVD)
puts media2.inspect

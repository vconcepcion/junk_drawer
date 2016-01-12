# Decorator - add extra functionality to an existing object

class Movie
  def self.output
    "Star Wars - Episode IV: A New Hope"
  end
end

class DirectorCredits
  attr_accessor :target

  def self.attach_to object
    @target = object
  end

  def self.output
    str = ""

    str << @target.output
    str << "\nDirected by: George Lucas"

    str
  end
end

class StarringCredits
  attr_accessor :target

  def self.attach_to object
    @target = object
  end

  def self.output
    str = ""

    str << @target.output
    str << "\nStarring: Mark Hamill, Harrison Ford, Carrie Fischer"

    str
  end
end

movie = Movie
director = DirectorCredits
starring = StarringCredits

director.attach_to movie
starring.attach_to director

puts starring.output

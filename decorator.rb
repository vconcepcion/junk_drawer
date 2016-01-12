# Decorator - add extra functionality to an existing object

class Movie
  def self.output
    "Star Wars - Episode IV: A New Hope"
  end
end

class AbstractCredits
  def self.attach_to object
    @target = object
  end
end

class DirectorCredits < AbstractCredits
  def self.output
    "#{@target.output}\nDirected by: George Lucas"
  end
end

class StarringCredits < AbstractCredits
  def self.output
    "#{@target.output}\nStarring: Mark Hamill, Harrison Ford, Carrie Fischer"
  end
end

movie = Movie
director = DirectorCredits
starring = StarringCredits

director.attach_to movie
starring.attach_to director

puts starring.output

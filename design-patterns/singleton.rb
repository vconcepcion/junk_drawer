# Singleton - assure that only one instance of the object can be created

class Singleton
  attr_accessor :singleton_instance

  def self.instance
    @singleton_instance = Singleton.new if @singleton_instance.nil?

    @singleton_instance
  end
end

singleton1 = Singleton.instance
singleton2 = Singleton.instance

puts (singleton1 == singleton2) ? "They are the same" : "Not the same"

# Observer - Setup dependency between objects so when a main object is updated all the dependents are informed

class Seller
  attr_accessor :buyer_list, :price

  def initialize
    @buyer_list = Array.new
    @price = 0
  end

  def add_buyer buyer
    buyer_list << buyer
  end

  # overwrite the price attribute setter (acts like a trigger)
  # alternate: setup new "update_price" method and leave setter with default action(s)
  def price= new_price
    @price = new_price

    notify_buyer_list
  end

  def notify_buyer_list
    buyer_list.each do |buyer|
      buyer.update self
    end
  end
end

class Buyer
  attr_accessor :name

  def initialize full_name
    @name = full_name
  end

  def update seller
    puts "#{name} has been notified of the new price: #{seller.price}"
  end
end

buyer1 = Buyer.new("Luke Skywalker")
buyer2 = Buyer.new("Darth Vader")

amazon = Seller.new

amazon.add_buyer buyer1
amazon.add_buyer buyer2

ebay = amazon.dup

amazon.price = 5
amazon.price = 99

ebay.price = 4

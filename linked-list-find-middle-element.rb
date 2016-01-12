class Node
  attr_accessor :data, :next_node

  def initialize data, next_node
    @data = data
    @next_node = next_node
  end
end

node1 = Node.new("Apple", nil)
node2 = Node.new("Banana", node1)
node3 = Node.new("Cucumber", node2)
node4 = Node.new("Daikon", node3)
node5 = Node.new("Eggplant", node4)
node6 = Node.new("Figs", node5)

head = node6

fast_pointer = head
slow_pointer = head

while fast_pointer.next_node != nil && fast_pointer.next_node.next_node != nil
  fast_pointer = fast_pointer.next_node.next_node
  slow_pointer = slow_pointer.next_node
end

puts "The middle node is #{slow_pointer.data}"

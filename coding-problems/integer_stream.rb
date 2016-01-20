# Integer Stream - given an array of integers and a target integer, find all
# the groups of consecutive integers in the array that sum to the target.

stream = [1,3,5,2,3,5,9,2,1,1,4,8,7,2,2,2,2,4,6]
target = 6
target_groups = []

stream.each_with_index do |number, i|
  offset = 0
  loop do
    group = stream[i-offset..i]
    sum = group.reduce(&:+)
    target_groups << group if sum == target
    offset += 1
    break if offset > i || sum >= target
  end
end
puts "Groups: #{target_groups}"

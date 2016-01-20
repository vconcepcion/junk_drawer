# Integer Stream - given an array of integers and a target integer, find all
# the groups of consecutive integers in the array that sum to the target.

stream = [1,3,5,2,3,5,9,2,1,1,4,8,7,2,2,2,2,4,6]
target = 2

stream.each_with_index do |number, index|
  group = [number]

  count = index + 1
  while group.reduce(:+) <= target do
    if group.reduce(:+) == target
      puts "Group: #{group}"
      puts "...indexes: #{index} - #{count - 1}"
    end

    stream[count].nil? ? exit : group << stream[count]

    count += 1
  end
end

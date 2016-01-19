# A "power set" is every possible set combination of a given set of unique numbers

# input set = [1, 2, 3]
# power set = [[], [1], [2], [3], [1, 2], [2, 3], [1, 3] [1, 2, 3]]

def build_sets length, input
  return if length > input.length
  return [] if length == 0

  all_sets = []
  current_set = []

  input.each_with_index do |numA, index_a|
    if index_a <= input.length - length
      for index_b in ((index_a + 1)..input.length)
        current_set = [numA]

        for index_c in (index_b..(input.length - 1))
          current_set << input[index_c] if current_set.length < length
        end

        all_sets << current_set if current_set.length == length
      end
    end
  end

  all_sets.uniq
end

input_set = [1, 2, 3, 4, 5]
# input_set = ['Apple', 'Banana', 'Cantelope']

for set_length in (0..input_set.length)
  puts build_sets(set_length, input_set).inspect
end

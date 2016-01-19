# A "power set" is every possible set combination of a given set of unique numbers

# input set = [1, 2, 3]
# power set = [[], [1], [2], [3], [1, 2], [2, 3], [1, 3] [1, 2, 3]]

def build_sets length, input
  return if length > input.length
  return [] if length == 0

  all_sets = []
  current_set = []

  input.each_with_index do |numA, indexA|
    if indexA <= input.length - length
      input.each_with_index do |numB, indexB|
        current_set = [numA]

        (indexB..(indexB + length)).each do |indexC|
          if indexB > indexA && current_set.length < length && indexC < input.length
            current_set << input[indexC]
          end
        end

        all_sets << current_set if current_set.length == length
      end
    end
  end

  all_sets.uniq
end

input_set = [1, 2, 3, 4, 5]
# input_set = ['Apple', 'Banana', 'Cantelope']

(0..input_set.length).each do |len|
  puts build_sets(len, input_set).inspect
end

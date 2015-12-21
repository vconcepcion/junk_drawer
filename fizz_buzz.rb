(1..100).each do |num|
  out = ""

  out = out + "Fizz" if num % 3 == 0
  out = out + "Buzz" if num % 5 == 0

  puts (out.empty?) ? num : out
end
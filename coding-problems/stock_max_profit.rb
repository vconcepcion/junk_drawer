# Stock Maximum Profit - given list of stock prices for a given day, return the maximum
# profit that could have been made that day (should return -1 if no profit can be made).

stock = [45,24,35,31,40,38,11]
#answer should be: 16 (buy at 24, sell at 40)

max_profit = -1

stock.each_with_index do |price, index|
  for index2 in ((index + 1)..(stock.length - 1))
    current_profit = stock[index2] - price

    max_profit = current_profit if current_profit > max_profit
  end
end

puts "Max profit possible: #{max_profit}"

# Stock Picker.
# http://www.theodinproject.com/ruby-programming/building-blocks
# July 15
# Make a method that takes in an array and returns the best days to buy and sell.

def stock_picker(stocks)
  best_days = []
  largest_difference = 0
  buy = 0
  sell = 0
  stocks.reverse!

  stocks.each do |n|
    stocks[stocks.index(n)..-1].each do |i|
      profit = n - i
      if profit > largest_difference
      	largest_difference = profit
      	buy = i
      	sell = n
      end
    end
  end
  stocks.reverse!
  if buy == 0 && sell == 0
  	puts "I reccomend you do not buy!"
  else
  	best_days << stocks.index(buy)
  	best_days << stocks.index(sell)
  end

  puts best_days.to_s

end

stock_picker([3, 8, 5, 9, 0, 2, 6, 13, 1])
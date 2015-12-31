def stock_picker(days)
	profit = 0
	buy_day = 0
	sell_day = 0
	array = [0,0]

	## x = stock price, y = day (created index)
	days.each_with_index do |x1, y1|
		days.each_with_index do |x2, y2|
			if y2 > y1 && x1 - x2 > profit
				profit = x1 - x2
				buy_day = x1
				sell_day = x2
				array[0] = y1
				array[1] = y2
			end
		end
	end
	return array
end

stock_picker([17,3,6,9,15,8,6,1,10])
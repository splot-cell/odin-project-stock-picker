def stock_picker(prices)
    prices.each_with_index do |buy_price, buy_index|
        for sell_index in buy_index + 1 .. prices.length - 1
            puts "#{buy_index}: #{buy_price} -> #{sell_index}: #{prices[sell_index]}"
        end
    end
end

stock_picker([17,3,6,9,15,8,6,1,10])
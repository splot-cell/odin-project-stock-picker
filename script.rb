def stock_picker(prices)
    price_hash = create_price_hash(prices)
    max_profit = price_hash.max { |a, b| a[:price_difference] <=> b[:price_difference]}
    [max_profit[:buy_index], max_profit[:sell_index]]
end

def create_price_hash(prices)
    price_difference = []
    prices.each_with_index do |buy_price, buy_index|
        for sell_index in buy_index + 1 .. prices.length - 1
            price_difference.push({buy_index: buy_index, sell_index: sell_index, price_difference: prices[sell_index] - buy_price})
        end
    end
    price_difference
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
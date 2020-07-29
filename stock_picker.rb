def stock_picker(prices)
    greatest_difference = 0
    indexes = []
    prices.each_with_index do |price_one, idx_one|
      prices.each_with_index do |price_two, idx_two|
        if ((idx_one < idx_two) && ((price_two - price_one) > greatest_difference))
          greatest_difference = price_two - price_one
          indexes[0] = idx_one
          indexes[1] = idx_two
        end
      end
    end
    return indexes
  end
  
  
  puts(stock_picker([2,3,4,10,1,7,2,10]))
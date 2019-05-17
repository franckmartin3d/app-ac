def my_index(arr,value)
    idx_arr =[]
    if !arr.include?(value)
        return nil
    else
        arr.each_with_index do |ele, idx|
            if ele == value
                idx_arr << idx
            end
        end
        idx_sorted = idx_arr.sort
    end
    return idx_sorted[0]

end




 p my_index(["a", "b", "c", "d"],"c") # 2
 p my_index(["a", "b", "c", "a", "b"],"b") #1
def my_uniq(arr)
        
    #count
    counter = Hash.new(0)
    working = arr
    working.each {|ele|counter[ele] +=1}
    p counter
    puts

    # new arr

    new_arr = []

    counter.each_key do |k|
        new_arr << k
    end
    return new_arr

end

p my_uniq(["a", "b", "a", "a", "b"])#cd..(["a", "b"])
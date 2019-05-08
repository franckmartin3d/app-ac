def palindrome?(str)
    # create 2 arrays and see if they are the same

    arr = str.split("")

    
    reverse_arr = []

    i = -1
    k = 0
    while k < arr.length
        reverse_arr << arr[i]
        i -=1
        k +=1
    end
    #debug arrays
    # puts "original array"
    # print arr
    # puts "reverse array" 
    # print reverse_arr

    if arr == reverse_arr
        return true
    else
        return false
    end

end

palindrome?("racecar")

def substrings(str)

    return_arr = []
# i dont understand this need to witheboard it!
    # range from 0 to str lentgh do on element start_idx
    (0...str.length).each do |start_idx|
        # range from element until string lenght 
        
        (start_idx...str.length).each do |end_idx| # this makes a substring
            # print the original until the end 
            return_arr << str[start_idx..end_idx]
        end
    end
    return return_arr
end

substrings("jump")

def palindrome_substrings(str)


    new_arr = []
    substring_arr = substrings(str)
    substring_arr.each do |ele|
        if palindrome?(ele) && ele.length > 1
            new_arr << ele
        end
    end

    print new_arr
end
palindrome_substrings("abracadabra")
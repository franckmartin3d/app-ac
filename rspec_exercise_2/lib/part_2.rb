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
# i dont understand this need to witheboard it!
    # range from 0 to str lentgh do on element start_idx
    (0...str.length).each do |start_idx|
        # range from element until string lenght 
        
        (start_idx...str.length).each do |end_idx| # this makes a substring
            # print the original until the end 
            p str[start_idx..end_idx]
        end
    end
end

substrings("jump")

def palindrome_substrings(str)

    return_arr = []

    # create all substring

    if substrings(str) is palindrome?(str)
    return_arr = substrings(str)

    print return_arr
end
palindrome_substrings("abracadabra")
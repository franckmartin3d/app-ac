def palindrome?(str)

    result = false
    new_arr = str.split("")

    first_arr =[]
    end_arr = []

    split_index = new_arr.length / 2
    # puts "split index is "
    # puts split_index

    (0...split_index).each do |ele|
        first_arr << new_arr[ele]
    end

    (split_index...new_arr.length).each do |ele|
        end_arr << new_arr[ele]
    end
    
    flip_arr = end_arr.reverse

    print first_arr
    puts "__________________"
    puts
    print end_arr
    puts "____________________"
    puts
    print flip_arr

    if first_arr == flip_arr
        result = true
    end
    return result
end

# p palindrome?("racecar")
p palindrome?("aa")
p palindrome?("tot")



# def substrings(str)
#   final_arr =[]

#   work_arr = str.split("")

#   oi = 0 
#   ini = 1
#   while oi < work_arr.length
#         puts work_arr[oi]
#         final_arr << work_arr[oi]
#     while ini < work_arr.length
#         if ini>oi
#             final_arr << work_arr[ini]
#             puts work_arr[ini]
#             puts "this works"
#         end
#         ini +=1
#     end
#     oi += 1
#   end
#   print final_arr
#     # have a nested loop

#     # outer index start at 0

#         #inner index needs to be greater then outer index (inner > outer)

# end

# substrings("jump")


# # def allpairs(str)


# #     (0...srt.length).each do |start_idx|
# #         (start_idx...str.length).each do |end_idx|
# #             p str[start_idx..end_idx]
# # end
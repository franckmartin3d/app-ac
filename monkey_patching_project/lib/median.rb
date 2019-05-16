require "byebug"


def median_sort(arr)
    # bubble sort
    sorted_arr = arr
    sorted = false
    while !sorted

        sorted = true

        (0...(arr.length - 1)).each do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i +1],arr[i]
                sorted = false
            end
        end
    end
    p sorted_arr
    return sorted_arr
end
    # find the midle index
def middle(arr)

    p arr
    puts

    even_arr = []

    if arr.length.odd?
        # p "its odd"
        # puts
        middle_index = (arr.length / 2)
        # p middle_index
        return middle_index
    else
        # p "its even"
        # puts
        middle1= (arr.length/2) - 1
        middle2= (arr.length/2)
        even_arr << middle1
        even_arr << middle2
        # p even_arr
        return even_arr

        #formula
        #middle_index = (middle1 + middle2) / 2
    end

  
end
    # if odd or even
    # if sorted_arr.length.even
    # # if even find the middle of the 2 index and return the sum value /2.0
    # #odd find the index of the middle and return the value
def median(arr)
    
    sorted_array = median_sort(arr)
    if sorted_array.length.even?
        even_working_index = middle(sorted_array)
        # select the value of the 2 index
        median = (sorted_array[even_working_index[0]] + sorted_array[even_working_index[1]]) / 2.0
        p "its even"
        puts
        p median
        return median

    else
        odd_index = middle(sorted_array)
        p "odd_index_ median"
        puts
        p sorted_array[odd_index]
        return sorted_array[odd_index]

    end
end


    
    # else

# # odd test
# midle([0,1,2,3,4])
# midle([0,1,2])

#even test
# midle([0,1,2,3])
# midle([0,1,2,3,4,5])
# median_sort([2,7,4,9,3])


median([3, 8, 4,5]) #9
# median([5, 0, 2, 6, 11, 10, 9]) #6


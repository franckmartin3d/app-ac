def my_map(arr, &prc)
    new_arr = []


    arr.each{|ele| new_arr << prc.call(ele)}

    new_arr
end

my_map([1,2,3]) {|num| num * 2}


def my_select(arr, &prc)
    new_arr = []

    arr.each do |ele|
        if prc.call(ele)
            new_arr << ele
        end
    end
    new_arr
end

my_select([1,2,3,8]) { |n| n.even? }

def my_count(arr, &prc)
    number = 0
    arr. each do |ele|
        if prc.call(ele)
            number +=1
        end
    end
    number
end

my_count([1,4,3,8]) { |n| n.even? }

def my_any?(arr, &prc)
    result = false

    arr.each do |ele|
        if prc.call(ele)
            result = true
        end
    end
    result
end

my_any?([7, 10, 3, 5]) { |n| n.even? }

def my_all?(arr,&prc)
    all_result = false
    element_arr = []
    element_result =false

    arr.each do |ele|
        if prc.call(ele)
            element_result = true
            element_arr << element_result

        else 
            element_result = false
            element_arr << element_result
        end
    end
    element_arr.each do |ele|
        if ele == false
            all_result = false
            return all_result
        else
            all_result = true
        end
    end
    
    all_result
end


my_all?([3, 5, 7, 11]) { |n| n.odd? }


def my_none?(arr,&prc)
    all_result = false
    element_arr = []
    element_result =false

    arr.each do |ele|
        if prc.call(ele)
            element_result = true
            element_arr << element_result
            return false

        else 
            element_result = false
            element_arr << element_result
        end
    end
    element_arr.each do |ele|
        if ele == true
            all_result = false
            return all_result
        else
            all_result = true
        end
    end
    
    all_result
end


my_none?([3, 5, 7, 11]) { |n| n.even? }

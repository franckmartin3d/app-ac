def reverser(str,&prc)

    str_arr = str.split("")
    new_arr = []
    
    new_arr = str_arr.reverse
    str_reverse = new_arr.join("")

    prc.call(str_reverse)
    

end

def reverser_teach(str,&prc)
    prc.call(str.reverse)
end

reverser("abcd") { |string| string.upcase }

def word_changer(str,&prc)

    new_arr = str.split(" ")
    final_arr = []

    new_arr.each do |ele|
        final_arr << prc.call(ele)
    end

    
    new_string = final_arr.join(" ")
    return new_string

end

word_changer("goodbye moon") { |word| word.upcase + "!" }


proc_1 = Proc.new { |n| n * 10 }
proc_2 = Proc.new { |n| n * n }


def greater_proc_value(n, proc_1, proc_2)

    number1 = proc_1.call(n)
    number2 = proc_2.call(n)

    if number1 > number2
        return number1
    else
        return number2
    end
    
end
p greater_proc_value(3, proc_1, proc_2)


def and_selector(arr, proc_1, proc_2)

    new_arr = []
    
    arr.each do |ele|
        if proc_1.call(ele) && proc_2.call(ele)
            new_arr << ele
        end
    end

    return new_arr

end

def alternating_mapper(arr, proc_1, proc_2)

    new_arr = []
    
    arr.each_with_index do |ele,idx|
        if idx % 2 == 0
            new_arr << proc_1.call(ele)
        else
            new_arr << proc_2.call(ele)
        end

    end

    return new_arr

end

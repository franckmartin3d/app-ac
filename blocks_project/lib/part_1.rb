# def select_even_nums(arr)

#     arr.select {|num| num % 2 == 0}
    
# end

# def select_even_nums_2(arr)
#     new_arr= []
#     arr.each do |num|
#         if num % 2 == 0
#             new_arr << num
#         end
#     end
#     print new_arr
# end

# select_even_nums_2([7, 3, 2, 5, 12])

# def reject_puppies(dogs)

#     dogs.reject { |dog| dog["age"] <= 2 }

# end

# reject_puppies(dogs = [
#     {"name"=>"Fido", "age"=>3},
#     {"name"=>"Spot", "age"=>2},
#     {"name"=>"Rex", "age"=>5},
#     {"name"=>"Gizmo", "age"=>1}
# ])

def count_positive_subarrays(arr)
    count = 0
    sum = []
    arr.each do |outer|
  
        sum << outer.inject {|sum , n| sum + n}
    
    end
    count = sum.count {|sum| sum > 0}
    return count
end



count_positive_subarrays([
    [-2, 5],
    [1, -9, 1],
    [4, 7]
  ])

  def aba_translate (str)

    vowel = "aeiou"
    modify_arr = []
    new_arr = str.split("")

    new_arr.each do |char|
        if vowel.include?(char)
            modify_arr << char + "b" + char
        else 
            modify_arr << char
        end
    end

        final_str = modify_arr.join("")
        return final_str

  end

   p aba_translate("cats")

   def aba_array(array)

    array.map{|word| aba_translate(word)}

   end

   p aba_array(["cat", "dog", "butterfly"])


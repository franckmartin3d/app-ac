# def partition(arr,num)

#     assembled_arr = Array.new(2){Array.new(0)}


#     arr.each do |ele|
#         if ele < num
#             assembled_arr[0] << ele

#         else
#             assembled_arr[1] <<ele
#         end

#     end

#    return assembled_arr 



# end
# #p partition([11, 5, 13, 2, 3], 7)


# def merge(hash_1,hash_2)

# # merge hash into new one


#     new_hash = {}
# # assign hash1 Key and value to new_hash
#     hash_1.each {|k, v| new_hash[k] = v}
# # assign hash 2 key value to new hash keys will overide the others
#     hash_2.each {|k, v| new_hash[k] = v}

#     return new_hash

# end






def censor(sentence, curse)

    sentence.downcase!

    # turn sentence into array
    arr_sentence = sentence.split(" ")
    new_arr = []

    #loop to check for every element
    arr_sentence.each do |ele|
        word = ele
        
        # loop to check every curse

        curse.each do |ele2|
            if ele == ele2
                new_arr << censor_vowel(ele)
            
            else
                new_arr << ele
            end

        end
    end
    final_sentence = new_arr.join(" ")
    return final_sentence

end

def censor_vowel(word)

    vowel ="aeiou"
    new_word = []
    word.each_char do |char|
        if vowel.include?(char)
           new_word << "*"
        else
            new_word << char
        end
    end
    final_word = new_word.join("")
    return final_word

end
p censor("Gosh darn it", ["gosh", "darn", "shoot"])

# p censor_vowel("missisipi")
# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence string as an arg. 
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ")
    new_str = ""
    new_words = []
    words.each do |word|
        num_vowels = num_vowels(word)
        if num_vowels >= 2
            new_words << word 
        end
    end

    new_str = new_words.join(" ")
    return new_str
end

def num_vowels(word)
    count = 0
    vowels = "aeiou"
    word.each_char do |char|
         if vowels.include?(char)
            count += 1
         end
    end
    count
end

p many_vowel_words("Hello")
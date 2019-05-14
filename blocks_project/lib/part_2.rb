def all_words_capitalized?(word)

    word.all? {|word| word == word.capitalize}
end

def iscapitalized(word)

    word.each do |word|
        if word == word.capitalize
            return true
        end
    end
    return false
end

all_words_capitalized?(["Hello", "World"])
# print iscapitalized(["Hello", "World"])


# def no_valid_url?(arr)

#     end_url = ['.com', '.net', '.io','.org']
#     arr.each do |url|
#         arr.none?{|url| end_url.include?(url)}

# end
student = [{ name: "Alice", grades: [94, 96] },
{ name: "Bob", grades: [50, 60] }
]

def any_passing_students?(array)

    array.any? do |student|
        grades = student[:grades]
        p grades
        avg =grades.sum/(grades.length * 1.0)
        avg >= 75
        p avg
    end

end
any_passing_students?(student)

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


def no_valid_url?(arr)

    end_url = ['.com', '.net', '.io','.org']
    arr.none?{|url| end_url.include?(url)}
end

def any_passing_students?

def all_words_capitalized?(word)

    word.all? {|word|iscapitalized(word)}
end

def iscapitalized(word)

    word.each do |word|
        if is_upper(word[0]) && is_lower(word[1...word.length])
            return true
        end
    end
    return false
end

all_words_capitalized?(["Hello", "World"])
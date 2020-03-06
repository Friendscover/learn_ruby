#write your code here
def echo sentence
    sentence
end

def shout sentence
    sentence = sentence.upcase
end

def repeat string, x = 2
    string_to_repeat = " " + string
    return_string = string

    while(x > 1)
        return_string = return_string + string_to_repeat 
        x = x - 1
    end
    return_string
end

def start_of_word words, x
    return_string = ""
    y = 0

    while(y < x)
        return_string = return_string + words[y]
        y = y + 1
    end
    return_string
end

def first_word sentence
    word_array = sentence.split(" ")
    word_array[0]
end

def titleize sentence
    words = sentence.split(" ")
    x = 1
    return_string = words[0].capitalize

    while(x < words.length)
        if(words[x] == "and" || words[x] == "over" || words[x] == "the")
            return_string = return_string + " " + words[x]
            x = x + 1
        else
            return_string = return_string + " " + words[x].capitalize 
            x = x + 1
        end
    end
    return_string
end
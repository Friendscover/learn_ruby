#write your code here
def translate sentence
    words_in_sentence = sentence.split
    new_sentence = []
    return_string = ""

    words_in_sentence.each do |word|
        slice_index = get_slice_index(word)
        new_sentence.push(slice_word(word, slice_index))
    end
    
    #shift the elements of the array to the new string and add Space if more #than two words are inside the array
    while(!new_sentence.empty?)
        if(new_sentence.length > 1)
            return_string = return_string + new_sentence.shift + " "
        else
            return_string = return_string + new_sentence.shift
        end
    end

    return_string
    
end

def slice_word word, x
    temp = word.slice!(0, x) 
    new_word = word + temp + "ay"
end 

#get index to slice at
def get_slice_index word
    x = 0
    index_found = true

    while(index_found)
        if(word[x] == "a" || word[x] == "e" || word[x] == "i" || word[x] == "o" || word[x] == "u")
            index_found = false   
        elsif(word[x] == "q")
            x = x + 2 
        else
            x = x + 1
        end
    end
    x
end

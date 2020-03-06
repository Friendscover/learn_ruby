class Book
    #getter and setter method initialized
    attr_accessor :title

    def title 
        title_arr = @title.split
        @title = ""
        title_arr.each do |word|
            if(!(isSpecialWord?(word)))
                word.replace(word.capitalize)
            elsif (title_arr.first == word)
                word.replace(word.capitalize)
            end
        end
        @title = title_arr.join(" ")
        @title
    end

    def isSpecialWord? word
        if(word == "the" || word == "a" || word == "an" || word == "and" || word == "in" || word == "of")
            true
        else
            false
        end
    end
end

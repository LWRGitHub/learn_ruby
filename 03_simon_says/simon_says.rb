def echo(word)
    return word
end

def shout(word)
   return word.upcase 
end

def repeat(word, num=1)
    i = 0
    str = word
    if num == 1
       str = str + " " + word 
       return str
    else
        loop do
            str = str + " " + word  
            i = i + 1
            if  i == num - 1
                return str
            end  
        end
    end

end

def start_of_word(word, num)
    return word.slice(0, num)
end

def first_word(word)
    for i in 1..word.length do
        if word[i] == " "
            return word.slice(0, i)
        end
    end
end

def titlization(str)
    #turns all 1st letter capitalezed
    str = str.split.map(&:capitalize).join(' ')
    #loops through string uses if statment to find the location "i" of the space
    for i in 1..str.length do
        if str[i] == " "
            if "And" == str.slice((i + 1), 3)
                str[i + 1] = "a"
            elsif "The" == str.slice((i + 1), 3)
                str[i + 1] = "t"
            elsif "Over" == str.slice((i + 1), 4)
                str[i + 1] = "o"
            end
        end
    end
    return str
end





class Book
# write your code here
end

def title(str)
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
            elsif "An" == str.slice((i + 1), 2)
                str[i + 1] = "a"
            elsif "A" == str.slice((i + 1), 1)
                str[i + 1] = "a"
            elsif "Of" == str.slice((i + 1), 2)
                str[i + 1] = "o"
            elsif "In" == str.slice((i + 1), 2)
                str[i + 1] = "i"
            end
        end
    end
    return str
end
class Book
  attr_accessor :title
  def capitalized_title
    @title = title
    #turns all 1st letter capitalezed
    @title = @title.split.map(&:capitalize).join(' ')  
    #loops through string uses if statment to find the location "i" of the space
    for i in 1..@title.length do
        if @title[i] == " "
            if "And" == @title.slice((i + 1), 3)
                @title[i + 1] = "a"
            elsif "The" == @title.slice((i + 1), 3)
                @title[i + 1] = "t"
            elsif "Over" == @title.slice((i + 1), 4)
                @title[i + 1] = "o"
            elsif "An" == @title.slice((i + 1), 2)
                @title[i + 1] = "a"
            elsif "A " == @title.slice((i + 1), 2)
                @title[i + 1] = "a"
            elsif "Of" == @title.slice((i + 1), 2)
                @title[i + 1] = "o"
            elsif "In " == @title.slice((i + 1), 3)
                @title[i + 1] = "i"
            end
        end
    end
    return @title
  end
end


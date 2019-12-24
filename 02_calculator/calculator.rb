
def add(num1, num2)
    sum = num1 + num2
    return sum
end

def subtract(num1, num2)
    sum = num1 - num2
    return sum
end

def sum(arr)
    i = 0
    sum = 0
    if arr.length == 0
        return 0
    else
        while i < arr.length
            sum = sum + arr[i]
            i = i + 1
        end
    end
    return sum
end

#write your code here
def add x, y
    sum = x + y
end

def subtract x, y
    sum = x - y
end

def sum array
    sum = 0
    if(!array.empty?)
        array.each do |i|
            sum = sum + i
        end
    else
        sum = 0
    end
    sum
end

def multiply array
    sum = 1
    array.each do |i|
        sum = sum * i
    end
    sum
end

def power x, y
    sum = 1
    while (y > 0)
        sum = sum * x
        y = y - 1
    end
    sum
end

def factorial x
    sum = 1
    while (x > 0)
        sum = sum * x
        x = x -1
    end
    sum
end
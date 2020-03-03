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
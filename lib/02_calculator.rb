def add(n1, n2)
    n1 + n2
end

def subtract(n1, n2)
    n1 - n2
end

def sum(array)
    sum = 0

    array.each {|n| sum += n }
    sum
end

def multiply(n1, n2)
    n1 * n2
end

def power(n1, n2)
    n1 ** n2
end

def factorial(n)
    factorial = 1
      
    for i in (1..n)
        factorial *= i
    end

    factorial
end

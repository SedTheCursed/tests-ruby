def who_is_bigger(n1, n2, n3)
    test = {"a" => n1, "b" => n2, "c" => n3}
    bigger =  "a"
    biggerValue = n1

    test.each do |k, v|
        if v == nil
            return "nil detected"
        elsif v > biggerValue
            biggerValue = v
            bigger = k
        end
    end

    bigger + " is bigger"
end

def reverse_upcase_noLTA(string)
    string.reverse.upcase.tr("ALT", "")
end

def array_42(array)
    array.include?(42)
end

def magic_array(a)
    a.flatten.sort.map!{|n| n*2}.select{ |n| n%3!=0}.uniq
end
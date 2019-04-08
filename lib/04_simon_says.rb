def echo(s)
    s
end

def shout(s)
    s.upcase
end

def repeat(s, r = 2)
    s + (" " + s)*(r-1)
end

def start_of_word(s, l)
    s.slice(0..l-1)
end

def first_word(s)
    s.split(" ")[0]
end

def titleize(s)
    a = s.split(" ")
    a.map! {|w| a.index(w) == 0 || w.length > 3 ? w.capitalize : w }.join(" ")
end
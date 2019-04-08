def is_capitalized?(w)
    if /[A-Z]/.match(w)
        w.downcase!
        true
    end
end

def is_punctuated?(w)
    punctuated = {status: false}
    if /[\.,;\!\?:]+$/.match(w)
        nb_c = 0
        punctuated[:status] = true
        w.length.times do |n|
            nb_c += 1 if /[\.,;\!\?:]/.match(w[n])
        end
        punctuated[:string] = w.slice(w.length-(nb_c), nb_c)
        w.sub!(punctuated[:string], "")
    end

    punctuated
end

def slicing(w, d)
    ml = d.class == String ? w.slice(d) : w.slice(d[0], d[1])
    w.sub!(ml, "")
    w << ml
end

def modification(w)
    if /^[^aeiouy]/i.match(w)
        if /^qu/i.match(w)
            slicing(w, "qu")
        elsif /^[^aeiouy]qu/i.match(w)
            slicing(w, [0, 3])
        else
            nb_c = 0
            w.length.times do |n|
                unless /[aeiouy]/i.match(w[n])
                    nb_c += 1
                else
                    break
                end
            end
            slicing(w,[0,nb_c])           
        end
    end

    w << "ay"
end

def translate(s)
    a = s.split(" ")
    
    a.each do |w|
        capitalized = is_capitalized?(w)
        punctuated = is_punctuated?(w)

        modification(w)

        w.capitalize! if capitalized
        w << punctuated[:string] if punctuated[:status]
    end

    a.join(" ")            
end
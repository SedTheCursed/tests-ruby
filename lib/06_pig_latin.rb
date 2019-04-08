def translate(s)
    a = s.split(" ")
    
    a.each do |w|
        if /[A-Z]/.match(w)
            capitalized = true
            w.downcase!
        end

        if /[\.,;\!\?:]+$/.match(w)
            nb_c = 0
            punctuated = true
            w.length.times do |n|
                nb_c += 1 if /[\.,;\!\?:]/.match(w[n])
            end
            punc = w.slice(w.length-(nb_c), nb_c)
            w.sub!(punc, "")
        end

        if /^[aeiouy]/i.match(w)
            w << "ay"
        elsif /^qu/i.match(w)
            ml = w.slice("qu")
            w.sub!("qu", "")
            w << "quay"
        elsif /^[^aeiouy]qu/i.match(w)
            ml = w.slice(0, 3)
            w.sub!(ml, "")
            w << ml + "ay"
        else
            nb_c = 0
            w.length.times do |n|
                unless /[aeiouy]/i.match(w[n])
                    nb_c += 1
                else
                    break
                end
            end
            ml = w.slice(0,nb_c)
            w.sub!(ml, "")
            w << ml + "ay"            
        end

        w.capitalize! if capitalized
        w << punc if punctuated
    end

    a.join(" ")            
end
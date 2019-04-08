def stringify(s)
    s < 10 ? "0" + s.to_s : s
end

def time_string(t)
    h = t/3600
    h = stringify(h)

    m = t % 3600 /60
    m = stringify(m)

    s = t % 60
    s = stringify(s)

    "#{h}:#{m}:#{s}"
end
def time_string(t)
    h = t/3600
    h = h < 10 ? "0" + h.to_s : h

    m = t % 3600 /60
    m = m < 10 ? "0" + m.to_s : m

    s = t % 60
    s = s < 10 ? "0" + s.to_s : s

    "#{h}:#{m}:#{s}"
end
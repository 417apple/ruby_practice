def convert_length(length,unit_from,unit_to)
    unit = {m:1.0, ft:3.28, in:39.37}
    (length / unit[unit_from] * units[unit_to]).round(2)
end

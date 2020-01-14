def count_additional_bottle(n)
    if n<3
        0
        else
        n/3 + count_additional_bottle(n/3+n%3)
    end
end

def count_bottle(n)
    n + count_additional_bottle(n)
end

puts count_bottle 0
puts count_bottle 1
puts count_bottle 3
puts count_bottle 11
puts count_bottle 100 

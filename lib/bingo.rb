class Bingo
    def self.generate_card
    puts " B| I| N| G| O"
    
    [[*1..15],[*16..30],[*31..45],[*46..60],[*61..75]].map{|s|
    s.sample(5)
    }.transpose.each_with_index{|array, i|
    array[2] = ' ' if i == 2
    puts array.map{|s| s.to_s.rjust(2)}.join('|')
    }
end
end

Bingo.generate_card

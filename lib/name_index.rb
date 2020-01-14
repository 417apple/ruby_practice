def name_index names
    katakana = [
    [*'ア'..'オ']<<'ヴ',
    [*'カ'..'ゴ'],
    [*'サ'..'ゾ'],
    [*'タ'..'ド'],
    [*'ナ'..'ノ'],
    [*'ハ'..'ポ'],
    [*'マ'..'モ'],
    [*'ヤ'..'ヨ'],
    [*'ラ'..'ロ'],
    [*'ワ'..'ン']
    ]
    
    names.sort!
    index=[]
    katakana.each do |gyou|
        names.each do |name|
            if gyou.include?(name[0])
                if index.empty? || index[-1][0]!=gyou[0]    
                    index << [gyou[0],[]]
                end
                index[-1][1]<<name
            end
        end
    end
    return index
end

names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ','ゴンダ','ドウモト','ヴィクトル']
p name_index names
# => [["ア", ["イトウ", "ヴィクトル"]], ["カ", ["カネダ", "キシモト", "ゴンダ"]], ["タ", ["ドウモト"]], ["ハ", ["ハマダ", "ババ"]], ["ワ", ["ワダ"]]]

class MatrixLikeComputation
    def execute
        matrix=calculate_matrix_total(gets.to_i)    # 答えの行列を表す文字列
    end
    
    def calculate_matrix_total(n)
        return "" if n==0                           # n=0のときは、空文字列を結合して終了する
        ans_matrix= ""
        rows = n.times.map{gets.split.map(&:to_i)}  # 行ごとに数値を配列に格納
        rows.each do |row|
            ans_matrix += (row << row.sum).map{|i| "%5d" % i}.join + "\n"   # 数値と合計値を結合した文字列を作成し、結合
        end
        column_sums = n.times.map{|i| rows.inject(0){|column_sum,row| column_sum+row[i]}}   # 列ごとの合計を配列に格納
        # 列ごとの合計値を行列の末尾に追加し、次の行列を結合
        ans_matrix += (column_sums << column_sums.sum).map{|i| "%5d" % i}.join + "\n" + calculate_matrix_total(gets.to_i)
    end
end

mlc = MatrixLikeComputation.new
puts mlc.execute

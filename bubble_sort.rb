# バブルソートについてのコード
# バブルソートは整列の代表的なアルゴリズムで、一つ隣の値と比べは入れ替えるという処理を行うもの
# 実施回数は(n(n-1))÷2

def bubble_sort(array)
  ary = array.dup
  ary_size = ary.size
  cal_times = ary_size - 1

  (0...(cal_times)).each do |n|
    # 1回ごとに要素の最後が確定するため実行回数が1回ずつ減る
    (0...(cal_times - n)).each do |i|
      j = i + 1

      # 一つ隣と比べて前の値が小さかったら並び替える    
      if ary[i] < ary[j]
        ary[i], ary[j] = ary[j], ary[i]
      end
    end
  end
  
  return ary
end

require 'pp'

array = Array.new(10){ rand(10) }
# pp array
sorted_array = bubble_sort(array)

pp sorted_array

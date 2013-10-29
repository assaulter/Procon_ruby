class CrazyRows
  class << self

    def cr(list: list)
      # 配列の最後に出現する１のインデックスのリストを作成
      lastone_list = index_list(list: list)
      # バブルソートを行い、入れ替え回数をカウントする
      count = 0

      list.each_with_index {|elem, i|
        (0..(list.length - i)).each_with_index {|num, index|
          list[index], list[index+1] = list[index+1], list[index] if list[index] > list[index+1]
        }
      }

      list
    end

    def bubble(list: list)
      list.each_with_index {|elem, i|
        (0..(list.length - i)).each_with_index {|num, index|
          list[index], list[index+1] = list[index+1], list[index] if list[index] > list[index+1]
        }
      }

      list      
    end

    # private

    def index_list(list: list)
      index_list = Array.new
      list.each_with_index {|elem, i|
        index_list[i] = last_one_index(list: elem)
      }

      index_list
    end

    # 配列の最後に出現する１のインデックスを返す関数
    def last_one_index(list: list)
      index = 0
      list.each_with_index {|elem, i| index = i if elem == 1}

      index
    end

  end
end
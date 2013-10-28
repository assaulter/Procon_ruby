class CrazyRows
  class << self

    def cr(list: list)
      # 配列の最後に出現する１のインデックスのリストを作成
      lastone_list = index_list(list: list)
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
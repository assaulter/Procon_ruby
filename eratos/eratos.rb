class Eratos
  # この書き方だとclass << self ... end内は、クラスメソッドになる
  class << self
    def eratos(num: num)
      num==1 ? 0 : create_prime_list(list:(2..num).to_a).count
      # 2..numを作る(偶数をドロップしておく)
      # 篩にかける
      # 個数を返す
    end

    # private

    # 整数のリストから、素数のみのリストを作成する
    # input: 2以上の整数のリスト, prime_listが入る入れ物
    def create_prime_list(list: list) 
      unless list.empty?
        head = list.first
        list.reject!{|item| item%head == 0}
        create_prime_list(list: list).unshift(head)
      end

      return list
    end
  end
end
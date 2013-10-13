class Eratos
  # この書き方だとclass << self ... end内は、クラスメソッドになる
  class << self
    def eratos(num: num)
      num==1 ? 0 : sieve(list:(2..num).to_a, prime_list: []).count
      # 2..numを作る
      # 篩にかける
      # 個数を返す
    end

    def eratos_by_range(from: from, to: to)
      to==2 ? 1 : sieve_by_range(from: from, to: to).count
    end

    # 範囲内の素数リストを返す
    def sieve_by_range(from: from, to: to)
        # (a,b] に対して、予め求めておく素数は, sqrt(b)まで→試し割り、エラトスと一緒
        sqrt_to = Math.sqrt(to).to_i
        prime_list = sieve(list: (2..sqrt_to).to_a, prime_list: [])
        # この素数リストを用いて、from..toなリストを篩にかける
        list = (from..to).to_a
        prime_list.each do |prime|
          list.reject!{|item| item%prime == 0}
        end

        list
    end

    # ちゃんとしたエラトステネスの篩を実装
    # list:入力, prime_list:素数のリスト
    def sieve(list: list, prime_list: prime_list)
      # 停止条件:探索リストの先頭=headが、head>sqrt(num)になるまで
      head = list.first
      unless head*head>list.last
        prime_list << head
        list.reject!{|item| item%head == 0}
        sieve(list: list, prime_list: prime_list)
      end

      return prime_list + list
    end

  end
end
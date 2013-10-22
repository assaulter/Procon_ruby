require '../Eratos/eratos.rb'

class Carmichael
  class << self

    # カーマイケル数かどうかbooleanを返す
    def carmichael(num: num)
      # sqrt(num)までの素数リストを作成
      sqrt_num = Math.sqrt(num).to_i
      prime_list = Eratos.sieve(list: (2..sqrt_num).to_a, prime_list: [])
      # numに対して割り切れる素数のリストを用意する
      composite_num_list = composite_numbers(prime_list: prime_list, num: num, composite_num_list: [])
      # 素数リストに対して、カーマイケル数かどうかの判定式を適用する
      composite_num_list.each do |prime|
        return false unless (num -1) % (prime-1) == 0
      end
    end

    # 合成数を返す
    def composite_numbers(prime_list: prime_list, num: num, composite_num_list: composite_num_list)
      # 停止条件:素数のリストが空になる
      unless prime_list.empty?
        head = prime_list.shift
        if num % head == 0
          composite_num_list << head
          num = num / head
        end
        composite_numbers(prime_list: prime_list, num: num, composite_num_list: composite_num_list)
      else
        composite_num_list << num if num != 1
      end

      # 合成数のリストを返す
      return composite_num_list
    end

  end
end
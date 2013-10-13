require './eratos.rb'

describe Eratos do
  context '1を与えられた時' do
    it '0を返す' do
      expected = 0
      actual = Eratos.eratos(num:1)

      expect(actual).to eq expected
    end
  end

  context '2を与えられた時' do
    it '1を返す' do
      expected = 1
      actual = Eratos.eratos(num:2)

      expect(actual).to eq expected
    end
  end

  context '10_000が与えられた時' do
    it '1229を返す' do
      expected = 1229
      actual = Eratos.eratos(num: 10000)

      expect(actual).to eq expected
    end
  end

  context 'sieveに120までの整数リストを与えた場合' do
    it '[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]を返す' do
      expected = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]
      actual = Eratos.sieve(list: (2..120).to_a, prime_list:[])

      expect(actual).to eq expected
    end
  end

  context '範囲内の素数のリストを求める' do
    it '50~120の場合は、[53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]を返す' do
      expected = [53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]
      actual = Eratos.sieve_by_range(from: 50, to:120)

      expect(actual).to eq expected
    end
  end

  context '範囲内の素数の数を求める' do
    it '50~120の場合は15個' do
      expected = 15
      actual = Eratos.eratos_by_range(from: 50, to: 120)

      expect(actual).to eq expected
    end
  end
end
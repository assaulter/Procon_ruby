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

  context '13を与えられた時' do
    it '6を返す' do
      # 2 3 5 7 11 13があるので6
    end
  end

  context 'create_prime_listに13までの整数のリストを与える場合' do
    it '[2,3,5,7,11,13]を返す' do
      expected = [2,3,5,7,11,13]
      actual = Eratos.create_prime_list(list: (2..13).to_a)

      expect(actual).to eq expected
    end
  end

end
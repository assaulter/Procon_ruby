require './carmichael.rb'

describe Carmichael do
  
  describe 'composite_numbers' do
    context '105の場合' do
      it '合成数のリスト[3,5,7]を返す' do
        prime_list = [2,3,5,7,11]
        num = 105
        expected = [3,5,7]

        actual = Carmichael.composite_numbers(prime_list: prime_list, num: num, composite_num_list: [])

        expect(actual).to eq expected
      end
    end

    context '420の場合' do
      it '合成数のリスト[2,3,5,7,2]を返す' do
        prime_list = [2,3,5,7,11]
        num = 420
        expected = [2,3,5,7,2]

        actual = Carmichael.composite_numbers(prime_list: prime_list, num: num, composite_num_list: [])

        expect(actual).to eq expected
      end
    end

  end

  describe 'carmichael' do
    context '561の場合' do
      it 'trueを返す' do
        actual = Carmichael.carmichael(num: 561)

        expect(actual).to be_true
      end
    end

    context '562の場合' do
      it 'falseを返す' do
        actual = Carmichael.carmichael(num: 562)

        expect(actual).to be_false
      end
    end

    context '8911の場合' do
      it 'trueを返す' do
        actual = Carmichael.carmichael(num: 8911)

        expect(actual).to be_true
      end
    end

    context '41042' do
      it 'trueを返す' do
        actual = Carmichael.carmichael(num: 41041)

        expect(actual).to be_true
      end
    end
  end

end  
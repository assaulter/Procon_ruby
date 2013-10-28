require './crazy_rows.rb'

describe CrazyRows do

  describe 'last_one_index' do
    context 'list=[0,0,1,0]が与えられた場合' do
      it '3を返す' do
        list = [0,0,1,0]
        actual = CrazyRows.last_one_index(list: list)
        expected = 2

        expect(actual).to eq expected
      end
    end
  end

  describe 'index_list' do
    context '[[0,0,1], [1,0,0], [0,1,0]]が与えられた場合' do
      it '最後に１が出現する位置の配列を返す' do
        list = [[0,0,1], [1,0,0], [0,1,0]]
        expected = [2,0,1]
        actual = CrazyRows.index_list(list: list)

        expect(actual).to eq expected
      end
    end
  end

end
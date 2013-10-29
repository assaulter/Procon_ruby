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

  describe 'bubble' do
    context '[2,0,1]が与えられた場合' do
      it '2' do
        list = [2,0,1]
        expected = 2
        actual = CrazyRows.bubble(list: list)

        expect(actual).to eq expected
      end
    end
  end

  describe 'cr' do
    context '[[1,1,1,0],[1,1,0,0],[1,1,0,0],[1,0,0,0]]が与えられた場合' do
      it 'return 4' do
        list = [[1,1,1,0],[1,1,0,0],[1,1,0,0],[1,0,0,0]]
        expected = 4
        actual = CrazyRows.cr(list: list)

        expect(actual).to eq expected
      end
    end
  end

end
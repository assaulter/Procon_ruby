require './msp.rb'

describe MinimumScalarProduct do

  describe 'msp' do
    context 'v1=[1,3,-5], v2=[4,1,-2]' do
      it 'return -25' do
        v1 = [1,3,-5]
        v2 = [4,1,-2]
        expected = -25

        actual = MinimumScalarProduct.msp(v1: v1, v2: v2)

        expect(actual).to eq expected
      end
    end
  end

end
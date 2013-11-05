require './bribe.rb'

describe Bribe do

  it 'return 35' do
    bribe = Bribe.new(num_of_room: 20, release_list: [3,6,14])
    expected = 35
    actual = bribe.solver(left: 1, right: 20)

    expect(actual).to eq expected
  end

end  
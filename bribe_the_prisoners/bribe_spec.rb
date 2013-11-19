require './bribe.rb'

describe Bribe do

  it 'return 7' do
    bribe = Bribe.new(num_of_room: 8, release_list: [3])
    expected = 7
    actual = bribe.solve

    expect(actual).to eq expected
  end

  it 'return 35' do
    bribe = Bribe.new(num_of_room: 20, release_list: [3,6,14])
    expected = 35
    actual = bribe.solve

    expect(actual).to eq expected
  end

  # it 'return hoge' do
  #   bribe = Bribe.new(num_of_room: 2863, release_list: [204, 370, 430, 447, 514, 518, 600, 640, 662, 882, 1257, 1319, 1406, 1493, 1502, 1877, 2067, 2235, 2423, 2453, 2496, 2498, 2603, 2606])
  #   expected = 1000
  #   actual = bribe.solver(left: 1, right: 2863)

  #   expect(actual).to eq expected
  # end

end 
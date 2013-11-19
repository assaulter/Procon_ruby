#
# google code jam用クラス
#

if __FILE__ == $0
  require './bribe.rb'

  @rooms = []
  @release_list = []

  ARGF.each_with_index do |line, index|
    if index%2==0
      @rooms.push line.to_s.split(nil)[0]
    else
      @release_list.push line.to_s.split(nil)
    end
  end
  i=0
  open('out.txt', 'w') { |f|
    @rooms.zip(@release_list).each do |room, release_list, index|
      bribe = Bribe.new(num_of_room: room.to_i, release_list: release_list.map{|num| num.to_i})
      result = bribe.solve
      i+=1
      f.puts("Case ##{i}: #{result}")
    end
  }

end
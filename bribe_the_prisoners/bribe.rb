class Bribe

  # 部屋数と開放予定の囚人リストをもらう
  def initialize(num_of_room: num_of_room, release_list: release_list)
    @num_of_room = num_of_room
    @release_list = release_list
  end

  def solve
    solver(left:1 , right: @num_of_room)
  end

  # left to rightの中で探索する
  def solver(left: left, right: right)
    cost = 0
    @release_list.each do |index|
      if (left..right).include? index
        tmp = (right - left) + solver(left: left, right: index - 1) + solver(left: index + 1, right: right)
        if ( cost == 0 || tmp < cost)
          cost = tmp 
        end
      end
    end

    cost
  end

end
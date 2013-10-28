class MinimumScalarProduct
  class << self

    def msp(v1: v1, v2: v2)
      # v1を降順、v2を昇順でソートする
      v1.sort!
      v2.sort.reverse!

      result = 0

      (0...v1.length).each do |index| 
        result += v1[index] * v2[index]
      end

      result
    end
    
  end
end
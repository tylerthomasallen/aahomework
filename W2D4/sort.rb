class Array

  def my_quick_fish_sort
    return [self.first] if self.length < 2

    pivot = self.shift
    greater_than = self.reject { |ele| ele.length < pivot.length }
    [pivot] + greater_than.my_quick_fish_sort
  end

  def sluggish
    longest = ''
    self.each do |fish|
      longest = fish unless fish.length < longest.length
    end
    longest
  end

  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x.length <=> y.length }
    return self if self.length <= 1

    mid = self.length / 2
    sorted_left = self.take(mid).dominant(&prc)
    sorted_right = self.drop(mid).dominant(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right)
    merged = []

    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        merged << left.shift
      else
        merged << right.shift
      end

    end
    merged
  end

  def dominant

    self.merge_sort[0]
  end

end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down",
  "left",  "left-up" ]

  def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, idx|
      return idx if tile == tiles_array
    end
  end

  tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end

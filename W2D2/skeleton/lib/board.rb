
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_index do |i|
      @cups[i] += [:stone, :stone, :stone, :stone] unless i == 6 || i == 13
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless @cups[start_pos]
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    i = start_pos
    until stones.empty?
      i += 1
      i = 0 if i > 13
      if i == 6
        @cups[6] << stones.shift if current_player_name == @name1
      elsif i == 13
        @cups[13] << stones.shift if current_player_name == @name2
      else
      @cups[i] << stones.shift
      end
    end
    render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups.take(6).all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    p1_count = @cups[6].length
    p2_count = @cups[13].length

    if p1_count == p2_count
      :draw
    else
      p1_count > p2_count ? @name1 : @name2
    end
  end
end

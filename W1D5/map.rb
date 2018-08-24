class Map
  def initialize
    @array = []
  end

  def set(key, value)
  end

  def get(key)
    @array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
  end
end

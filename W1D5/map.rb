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

  def show
    deep_dup(@array)
  end

  private

  def deep_dup(arr)
    arr.map { |ele| ele.is_a?(Array) ? deep_dup(arr) : ele }
  end
end

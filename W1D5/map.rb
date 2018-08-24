class Map
  def initialize
    @array = []
  end

  def set(key, value)
    idx = @array.each_index { |ele| ele[0] == key }
    if idx
      @array[idx][1] = value
    else
      @array.push([key, value])
    end
  end

  def get(key)
    @array.each { |ele| return ele[1] if ele[0] == key }
    nil
  end

  def delete(key)
    val = get(key)
    @array.reject! { |ele| ele[0] == key }
    val
  end

  def show
    deep_dup(@array)
  end

  private

  def deep_dup(arr)
    arr.map { |ele| ele.is_a?(Array) ? deep_dup(arr) : ele }
  end
end

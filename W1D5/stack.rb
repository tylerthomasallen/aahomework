class Stack
  def initialize
    @stack = []
  end

  def push(ele)
    @stack.push(ele)
    el
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end
end

class Stack
  def initialize(stack)
    @stack = stack
  end

  def push(el)
    @stack << el
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.first
  end
end

class Stack
    def initialize
        @stack = []
    end
  
    def push(el)
      @stack << el
    end
  
    def pop
        @stack.delete_at(-1)
        @stack.last
    end
  
    def peek
      @stack.last
    end
end



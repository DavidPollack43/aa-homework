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

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end
end


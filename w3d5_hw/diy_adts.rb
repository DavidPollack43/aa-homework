require "byebug"
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

class Map
    def initialize
        @map = []
    end

    def set(key,value)
        key_include = false
        pair_index = nil
        # debugger
        @map.each_with_index do |pair, inx| 
            key_include = true if pair[0] == key
            pair_index = inx if key_include && pair_index == nil
        end
        if !key_include
            @map << [key, value]
        else
            @map.delete_at(pair_index)
            @map << [key,value]
        end
        return @map
    end

    def get(key)
        @map.each_with_index do |pair, i|
            return pair if pair[0] == key
        end
        return nil
    end
end

m = Map.new
m.set(1,1)
m.set(2,2)
m.set(1,4)
p m
p m.get(2)
p m.get(1)
p m.get(0)


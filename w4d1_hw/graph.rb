require 'set'
class GraphNode
    attr_reader :value, :neighbors
    def initialize(value, neighbors = [])
        @value = value
        @neighbors = []
    end

    def neighbors= (neighbors)
        @neighbors = neighbors
    end

    def inspect
        return "ID: #{self.object_id} Value: #{self.value}"
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        set = Set.new()
        while !queue.empty?
            deq_ele = queue.shift 
            return deq_ele if deq_ele.value == target_value
            set.add(deq_ele)
            deq_ele.neighbors.each do |n_node|
                queue << n_node if !set.include?(n_node)
            end
        end
        nil
    end
end
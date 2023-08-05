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
end
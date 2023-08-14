class LRUCache

    def initialize(num)
        @max= num
        @list = []
    end

    def count
        @list.length
    end

    def add(el)
        if @list.count >= @max && !@list.include?(el)
            @list.shift
        end
        if !@list.include?(el)
            @list << el
        end
        if @list.include?(el)
            index = @list.index(el)
            accessed_ele = @list[index]
            @list.delete_at(index)
            @list << accessed_ele
        end
    end

    def show
        @list
    end

    private
    

end
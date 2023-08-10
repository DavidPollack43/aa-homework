def slug_octo(array)
    max_word = ""
    array.each_with_index do |ele, i|
        if ele.length > max_word.length
            max_word = ele
        end
        (i+1...array.length).each do |j|
            if array[j].length > max_word.length
                max_word = array[j]
            end
        end
    end    
    max_word
end

#It is important to note that in the worst case this will be O(n^2) time, but for the average
#and the best case it is n log n. I see if I wanted to do consistent n log n time I would do merge sort
def quick_sort(array)
    return [] if array.length == 0
    return [array[0]] if array.length == 1
    first = array.shift
    left = []
    right = []
    array.each do |ele|
        if ele.length < first.length
            left << ele
        else
            right << ele    
        end
    end
    result = quick_sort(left) + [first] + quick_sort(right) 
end  

#Use quick sort on this to make it O(n * log * n)
def dom_octo(array)
    return array.last
end

#O(n)
def clever_octo(array)
    max_word = ""
    array.each {|ele| max_word = ele if ele.length > max_word.length}
    max_word
end     

def slow_dance(move, tiles_array)
    indx = tiles_array.index(move)
    tiles_array.each_with_index do |ele, i|
        return i if i == indx
    end 
    nil   
end    

def fast_dance(move, tiles)
    return tiles[move]
end    

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
    "left",  "left-up"]

tiles = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, 
        "left" => 6, "left-up" => 7}
p fast_dance("up", tiles)

p fast_dance("right-down", tiles)
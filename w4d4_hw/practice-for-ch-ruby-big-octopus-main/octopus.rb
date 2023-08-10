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

def dom_ocot(array)
    return array.last
end


p dom_ocot(quick_sort(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']))
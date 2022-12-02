def my_uniq(array)
    raise "this is not an array" if !array.is_a?(Array)
    counts = Hash.new(0)
    array.each { |ele| counts[ele] =true}
    counts.keys
end

class Array
    def two_sum
        pairs = []
        (0...self.length).each do |idx1|
            (idx1+1...self.length).each do |idx2|
                pairs << [idx1, idx2] if self[idx1] + self[idx2] == 0  
            end
        end
        pairs
    end
end

def my_transpose(array)
    new_array = Array.new(array.length) {Array.new(array.first.length)}
    (0...array.length).each do |i|
        (0...array.length).each do |j|
            new_array[j][i] = array[i][j]
        end
    end
    new_array
end

def stock_picker(array)
    array.each do |ele|
        raise "Not all elements are integers" if !ele.is_a?(Integer)
    end

    max_difference = 0
    max_idxs = []
    array.each_with_index do |ele_1, idx_1|
        array.each_with_index do |ele_2, idx_2|
            if idx_2 > idx_1 && ele_1 > ele_2 
                max_difference = ele_1 - ele_2 if ele_1 - ele_2 > max_difference
                max_idxs = [idx_1, idx_2]
            end
        end
    end
    max_idxs

end

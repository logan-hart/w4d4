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


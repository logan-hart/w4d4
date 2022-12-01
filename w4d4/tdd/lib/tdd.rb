def my_uniq(array)
    raise "this is not an array" if !array.is_a?(Array)
    counts = Hash.new(0)
    array.each { |ele| counts[ele] =true}
    counts.keys
end
require_relative "../lib/tdd.rb"

describe "#my_uniq" do
    it "take in an array as arg" do
        expect{my_uniq("abc")}.to raise_error("this is not an array")
    end

    it "return new_array without duplicate elements" do
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end
end

describe "Array#two_sum" do
    subject {[-1,0,2,-2,1] }
    it "should call method on an array" do 
        expect(self)
    end

    it "should return all pairs of positions where elements sum to zero" do
        expect(subject.two_sum).to eq([[0,4], [2,3]])
    end

    it "should return smaller pairs first [0,2] before [2,1] and [0,1] before [0,2]" do
        expect(subject.two_sum).to_not eq([[2,3],[0,4]])
    end
end

describe "#my_transpose" do
    subject(:rows) {
        [[0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]]}
    let(:cols) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]}

    it "should correctly transpose the array's rows & columns" do 
        expect(my_transpose(rows)).to eq(cols)
        expect(my_transpose(cols)).to eq(rows)
        expect(my_transpose(rows)).to eq(rows.transpose)
    end

end

describe "stock_picker" do
    let(:array_1) {[5, 10, 4, 12, 40]} #== [1, 2]

    it "should take in an array of stock prices" do
        expect{["a","b","c"]}.to raise_error("Not all elements are integers")
    end

    it "should only consider prices after buy point" do
        expect(stock_picker(array_1)).to_not eq([4, 2])
    end

    it "should return the correct pairs of days" do
        expect(stock_picker(array_1)).to eq([1,2])
    end

    # it "should return an array of dates" do
    #     expect(stock_picker(array_1))
    # end




end




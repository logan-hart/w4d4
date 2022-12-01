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


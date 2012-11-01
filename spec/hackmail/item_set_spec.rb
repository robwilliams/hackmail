require 'spec_helper'

describe Hackmail::ItemSet do
  subject {
    set = Hackmail::ItemSet.new
    %w{1 2 2 3 4 6 5 6 6 7 8 9 10}.each do |i|
      set << Hackmail::Item.new({"points" => i})
    end
    set
  }

  its(:mean)   { should eq(5.308) }
  its(:median) { should eq(6) }
  its(:mode) { should eq(6) }

  describe "#above_median" do
    it "should return a Hackmail::ItemSet" do
      subject.above_median.should be_a(Hackmail::ItemSet)
    end

    it "should only return items with more than 6 points" do
      subject.above_median.select {|x|
        x.points <= 6
      }.should be_empty
    end

    it "should contain 4 items" do
      subject.above_median.length.should eq(4)
    end
  end
end

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
end

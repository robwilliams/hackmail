require 'spec_helper'

describe Hackmail::Item do
  subject { Hackmail::Item.new({
    "id" => "1",
    "title" => "A News Item",
    "url" => "http://www.google.co.uk",
    "commentCount" => "10",
    "points" => "100",
    "postedAgo" => "10/12/2012",
    "postedBy" => "Geoff"
  }) }

  describe "#to_s" do
    it "should return a string containing the title" do
      subject.to_s.should =~ /#{subject.title}/
    end

    it "should return a string containing the url" do
      subject.to_s.should =~ /#{subject.url}/
    end

    it "should return a string containing the comment_count" do
      subject.to_s.should =~ /#{subject.comment_count}/
    end

    it "should return a string containing the points" do
      subject.to_s.should =~ /#{subject.points}/
    end

    it "should return a string containing posted_by" do
      subject.to_s.should =~ /#{subject.posted_by}/
    end

    it "should return a string containing posted_ago" do
      subject.to_s.should =~ /#{subject.posted_ago}/
    end
  end
end

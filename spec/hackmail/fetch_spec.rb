require 'spec_helper'

describe Hackmail::Fetch, "#front_page" do

  subject { Hackmail::Fetch.front_page }
  
  context "when successful" do

    use_vcr_cassette

    it "should return a Hackmail::ItemSet" do
      subject.should be_a(Hackmail::ItemSet)
    end

    it "should contain 30 items" do
      subject.length.should eql(30)
    end
  end

  context 'when fetch fails' do

    use_vcr_cassette 

    it "should raise Hackmail::FetchError" do
      lambda { subject }.should raise_error(Hackmail::FetchError)
    end
  end
end

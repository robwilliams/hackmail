module Hackmail

  class Fetch
    def self.front_page
      data = open("http://api.ihackernews.com/page").read
      ItemSet.new(JSON.parse(data)["items"].map {|x| Item.new(x) })
    rescue OpenURI::HTTPError => e
      raise FetchError, 
            "Unable to connect to hacker news, error message: \n #{e}"
    end
  end
end

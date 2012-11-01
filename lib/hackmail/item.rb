module Hackmail
  class Item

    attr_reader :id, 
                :title, 
                :url, 
                :comment_count, 
                :points, 
                :posted_ago, 
                :posted_by

    def initialize(attributes)
      @id = attributes["id"]
      @title = attributes["title"]
      @url = attributes["url"]
      @comment_count = attributes["commentCount"].to_i
      @points = attributes["points"].to_i
      @posted_ago = attributes["postedAgo"]
      @posted_by = attributes["postedBy"]
    end
  end
end

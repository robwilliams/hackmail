module Hackmail
  class ItemSet < Array
    def mean
      (inject(0.0) { |result, item| 
        result + item.points 
      } / length).round(2)
    end

  end
end

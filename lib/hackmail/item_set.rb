module Hackmail
  class ItemSet < Array
    def mean
      (inject(0.0) { |result, item| 
        result + item.points 
      } / length).round(2)
    end

    def median
      sorted = sort { |a,b| a.points <=> b.points }
      (sorted[(length-1)/2].points + sorted[length/2].points) / 2.0
    end
  end
end

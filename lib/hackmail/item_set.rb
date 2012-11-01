module Hackmail
  class ItemSet < Array
    def mean
      (inject(0.0) { |result, item| 
        result + item.points 
      } / length).round(3)
    end

    def median
      sorted = sort { |a,b| a.points <=> b.points }
      (sorted[(length-1)/2].points + sorted[length/2].points) / 2.0
    end

    def mode
      frequencies = inject(Hash.new(0)) do |result, item|
        result[item.points] += 1
        result 
      end

      frequencies.select do |k,v| 
        v == frequencies.values.max 
      end.keys.first
    end

    def above_median
      ItemSet.new(select {|x| x.points > median })
    end

    def to_s
      "Mean:   #{mean}" \
      "Median: #{median}" \
      "Mode:   #{mode}"
    end
  end
end

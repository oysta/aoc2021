values = $<.readlines.map(&:strip).map(&:chars).map { |e| e.map(&:to_i) }.transpose
counts = values.map(&:tally)
puts counts.map(&:entries).map { |e| e[0][1] > e[1][1] ? e[0][0] : e[1][0] }.join


#puts counts.map(&:values).map { |e| e.inject(:*) }.sum


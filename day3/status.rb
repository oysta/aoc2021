counts = $<
    .readlines
    .map(&:chomp)
    .map(&:chars)
    .transpose
    .map(&:tally)
    .map(&:entries)

gamma = counts.map { |e| e[0][1] > e[1][1] ? e[0][0] : e[1][0] }.map(&:to_i)
epsilon = gamma.map { 1 - _1 }

puts epsilon.join.to_i(2) * gamma.join.to_i(2)

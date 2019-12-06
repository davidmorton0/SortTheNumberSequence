require "test/unit/assertions"
include Test::Unit::Assertions


def sortSequence(sequence)
  seq = sequence.join.split("0")
  seq = seq.map { |s| s.chars.sort.join }
  s = seq.each_with_index.sort_by { |s| [s[0].sum - 48 * s.length, s[1]] }
  result = s.map {|x| x[0] }.join("0").chars
  result.push("0")
  result = result.map {|ch| ch.to_i}
end

assert_equal [1,2,3,0,1,3,5,0,2,4,8,0,4,5,6,0], sortSequence([3,2,1,0,5,6,4,0,1,5,3,0,4,2,8,0])
assert_equal [1,2,3,0,2,2,2,0,1,3,5,0,4,5,6,0], sortSequence([3,2,1,0,5,6,4,0,1,5,3,0,2,2,2,0])
assert_equal [2,2,2,0,1,2,3,0,1,3,5,0,4,5,6,0], sortSequence([2,2,2,0,5,6,4,0,1,5,3,0,3,2,1,0])

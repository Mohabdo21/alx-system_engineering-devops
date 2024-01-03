#!/usr/bin/env ruby
# This script matches and prints strings that start with 'h',
# end with 'n', and have exactly one character in between.

puts ARGV[0].scan(/^h.n$/).join


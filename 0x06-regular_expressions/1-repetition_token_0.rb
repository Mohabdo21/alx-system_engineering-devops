#!/usr/bin/env ruby
# This script matches and prints strings that start with 'hb',
# end with 'n', and have 2 to 5 't' characters in between.

puts ARGV[0].scan(/hbt{2,5}n/).join


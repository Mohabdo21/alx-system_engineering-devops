#!/usr/bin/env ruby
# This script matches and prints strings that start with 'hb',
# followed by 0 to 4 't' characters, and ending with 'n'.

puts ARGV[0].scan(/hbt*n/).join


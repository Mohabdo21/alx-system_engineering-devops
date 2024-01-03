#!/usr/bin/env ruby
# This script matches and prints strings that start with 'h',
# optionally followed by 'b', then 't', and ending with 'n'.

puts ARGV[0].scan(/hb{0,1}tn/).join

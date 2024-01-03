#!/usr/bin/env ruby
# This script matches and prints only the capital letters in the input string.

puts ARGV[0].scan(/[A-Z]/).join


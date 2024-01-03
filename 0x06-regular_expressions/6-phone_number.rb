#!/usr/bin/env ruby
# This script matches and prints a 10 digit phone number.

puts ARGV[0].scan(/^\d{10}$/).join


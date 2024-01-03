#!/usr/bin/env ruby
# This script extracts and prints the sender, receiver, and flags from a log file.

log_line = ARGV[0]

sender = log_line.scan(/\[from:(.+?)\]/).join
receiver = log_line.scan(/\[to:(.+?)\]/).join
flags = log_line.scan(/\[flags:(.+?)\]/).join

puts "#{sender},#{receiver},#{flags}"


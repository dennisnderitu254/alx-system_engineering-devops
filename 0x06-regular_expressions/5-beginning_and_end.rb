#!/usr/bin/env ruby
# Prints the string that starts with h and ends with n.
puts ARGV[0].scan(/^h.n$/).join

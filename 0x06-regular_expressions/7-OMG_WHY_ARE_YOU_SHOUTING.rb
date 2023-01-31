#!/usr/bin/env ruby
# The regular expression must be only matching: capital letters
# It prints all the capital letters in the string.
puts ARGV[0].scan(/[A-Z]/).join

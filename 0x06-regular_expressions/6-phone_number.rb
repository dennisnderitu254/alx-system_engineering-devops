#!/usr/bin/env ruby
# The regular expression must match a 10 digit phone number
# It prints the phone number if it is 10 digits long.
puts ARGV[0].scan(/^\d{10,10}$/).join

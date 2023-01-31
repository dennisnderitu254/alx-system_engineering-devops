#!/usr/bin/env ruby
# ./2-repetition_token_1.rb
# Prints the string that matches the regular expression holberton
puts ARGV[0].scan(/hb?tn/).join

#!/bin/ruby
require 'pdf-reader'

reader = PDF::Reader.new(ARGV[0])
reader.pages.each do |page|
	print page
end

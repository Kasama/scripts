require 'pdf-reader'

reader = PDF::Reader.new('bandeco.pdf')

reader.pages.each do |page|
	puts page.text
end

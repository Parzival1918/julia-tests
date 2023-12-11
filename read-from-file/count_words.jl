global word_count::Int64 = 0
global line_count::Int64 = 0

# Open the file
open("words") do f
	while !eof(f)
		line = readline(f)
		
		global line_count += 1
		words = split(line, " ") # separate words by spaces
		
		temp_count = 0
		for word in words
			if length(word) != 0
				temp_count += 1
			end
		end
		global word_count += temp_count
	end
end

println("line count => $(line_count)")
println("word count => $(word_count)")

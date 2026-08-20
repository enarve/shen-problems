-- Problem 5.1.4

local input_file = io.open("input.txt", "r")
local output_file = io.open("output.txt", "w")

assert(input_file, "No input file found.")
assert(output_file, "No output file found.")

local comment_started = false
local quote_started = false

local char = input_file:read(1)
while char do
    if comment_started then
        -- Comment state
	    if char == "}" then
            comment_started = false
			output_file:write(" ")
        end
    elseif quote_started then
        output_file:write(char)
        if char == "\"" then
            quote_started = false
        end
    else
        -- Default state
        if char == "{" then
            comment_started = true
        elseif char == "\"" then
            quote_started = true
            output_file:write(char)
        else
            output_file:write(char)
        end
    end
    -- move to next char
    char = input_file:read(1)
end
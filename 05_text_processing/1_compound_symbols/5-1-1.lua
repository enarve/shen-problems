-- Problem 5.1.1
-- ** -> ^

local input_file = io.open("input.txt", "r")
local output_file = io.open("output.txt", "w")
assert(input_file, "Input file not found.")
assert(output_file, "Output file not found.")
local star_occured = false

local char = input_file:read(1)
while char do
    if star_occured then
        star_occured = false
        if char == "*" then
            output_file:write("^")
        else
            output_file:write("*")
            output_file:write(char)
        end
    else
        if char == "*" then
            star_occured = true
        else
            output_file:write(char)
        end
    end
    char = input_file:read(1)
    output_file:flush()
end
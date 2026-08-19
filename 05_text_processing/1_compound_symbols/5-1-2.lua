-- Problem 5.1.2

local input_file = io.open("input.txt", "r")
local output_file = io.open("output.txt", "w")
assert(input_file, "Input file not found.")
assert(output_file, "Output file not found.")

local abc = "you"

local read_state = false
local read_buffer = ""

local char = input_file:read(1)
while char do
    local i = #read_buffer+1
    if read_state then
        if char == abc:sub(i, i) then
            read_buffer = read_buffer .. char
        else
            output_file:write(read_buffer .. char)
            read_buffer = ""
            read_state = false
        end
    else
        if char == abc:sub(i, i) then
            read_state = true
            read_buffer = read_buffer .. char
        else
            output_file:write(char)
        end
    end

    if read_buffer == abc then
        read_buffer = ""
        read_state = false
    end
    
    char = input_file:read(1)
    output_file:flush()
end

if read_state then
    output_file:write(read_buffer)
end
-- Problem 5.1.5
-- Comment:
-- i:=i+1; (* here i is increased by 1 *)

local input_file = io.open("input.txt", "r")
local output_file = io.open("output.txt", "w")

assert(input_file, "No input file found.")
assert(output_file, "No output file found.")

local comment_about_to_start = false
local comment_started = false
local comment_about_to_finish = false
local quote_started = false

local char = input_file:read(1)
while char do
    if comment_about_to_start then
        -- About to start state
        comment_about_to_start = false
        if char == "*" then
            comment_started = true
        else
            output_file:write("(")
            output_file:write(char)
	    end
    elseif comment_started then
        -- Comment state
        if comment_about_to_finish then
            comment_about_to_finish = false
            if char == ")" then
                comment_started = false
    			output_file:write(" ")
            else 
                output_file:write("*")
                output_file:write(char)
            end
        elseif char == "*" then
            comment_about_to_finish = true
        end
    elseif quote_started then
        -- Quote state
        output_file:write(char)
        if char == "\"" then
            quote_started = false
        end
    else
        -- Default state
        if char == "(" then
            comment_about_to_start = true
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
-- Problem 6.1.2

local stack = require("stack")

local function is_balanced(brackets)
    local result = true
    for char in brackets:gmatch(".") do
        if char == "(" then
            stack.push(char)
        elseif char == ")" then
            if stack.length > 0 then
                stack.pop()
            else
                result = false
                break
            end
        end
    end

    if not stack.is_empty() then
        result = false
    end
    
    return result
end

-- Test
local brackets = "))(())"
print(brackets)
local result = is_balanced(brackets)
print(result)
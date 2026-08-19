-- Problem 6.1.1

local stack = require("stack")

local function is_balanced(brackets)
    local result = true
    -- iterate through brackets
    for char in brackets:gmatch(".") do
        -- push to the stack opening brackets
        if char == "(" or char == "[" then
            stack.push(char)
        elseif char == ")" then
            if stack.top() == "(" then
                -- pop from the stack when meeting closing bracket
                stack.pop()
            else
                -- breaking because of wrong sequence
                result = false
                break
            end
        elseif char == "]" then
            if stack.top() == "[" then
                -- pop from the stack when meeting closing bracket
                stack.pop()
            else
                -- breaking because of wrong sequence
                result = false
                break
            end
        else
            print("Unknown symbol in sequence: " .. char)
        end
    end
    if not stack.is_empty() then
        result = false
    end
    return result
end

-- Test
local brackets = "()()()()()[[[[()]]]]("
print(brackets)
local result = is_balanced(brackets)
print(result)
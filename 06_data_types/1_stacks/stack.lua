-- Stack implementation

local MAX_SIZE <const> = 10000

-- creating new stack
local stack = {
    items = {},
    length = 0
}

-- stack operations
function stack.push(item)
    assert(stack.length < MAX_SIZE, "Can't add an item, the stack is full!")
    stack.length = stack.length + 1
    stack.items[stack.length] = item
end

function stack.pop()
    assert(stack.length > 0, "Can't pop, stack is empty!")
    local popped_item = table.remove(stack.items)
    stack.length = stack.length - 1
    return popped_item
end

function stack.top()
    return stack.items[stack.length]
end

function stack.empty()
    stack.items = {}
    stack.length = 0
end

function stack.is_empty()
    if stack.length == 0 then
	    return true
    else
        return false
    end
end

return stack

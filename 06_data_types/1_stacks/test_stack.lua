local stack = require("stack")

local function test_empty()
    print("Testing empty()...")
    stack.empty()
    assert(stack.length == 0, "Stack length is not empty after initialization")
    print("Passed!")
end

local function test_is_empty()
    print("Testing is_empty()...")
    stack.empty()
    assert(stack.is_empty(), "Stack is not empty!")
	print("Passed!")
end

local function test_push()
    print("Testing add()...")
    stack.empty()
    stack.push(2)
    stack.push(3)
    assert(stack.length == 2, "Stack length is wrong")
    print("Passed!")
end

local function test_pop()
    print("Testing pop()...")
    stack.empty()
    for i = 1, 10 do
        stack.push(i)
    end
    assert(stack.length == 10, "Stack length is wrong")
    for j = 10, 2, -1 do
        local popped_item = stack.pop()
        assert(popped_item == j, "Popped item is wrong")
    end
    assert(stack.length == 1, "Stack length is wrong")

    print("Passed!")
end

local function test_top()
    print("Testing top()...")
    stack.empty()
    stack.push(24)
    local item = stack.top()
    assert((item == 24), "Error testing top! Item is" .. item)
    assert(stack.length == 1, "Stack length is wrong")
    print("Passed!")
end

-- Run tests
print("Running tests for stack")
test_empty()
test_is_empty()
test_push()
test_pop()
test_top()
print("All tests passed!")
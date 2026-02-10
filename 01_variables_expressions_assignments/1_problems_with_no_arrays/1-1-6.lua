-- Problem 1.1.6

local function sum(a, b)
    local c = a
    local i = 0
    while i ~= b do
        i = i + 1
        c = c + 1
    end
    return c
end

-- Test
print(sum(2, 2))
print(sum(9, 13))
print(sum(0, 7))
print(sum(5, 0))
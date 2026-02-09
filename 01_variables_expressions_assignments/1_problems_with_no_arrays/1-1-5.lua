-- Problem 1.1.5

local function mult(a, b)
    local i = b
    local res = 0
    while i ~= 0 do
        res = res + a
        i = i - 1
    end
    return res
end

-- Test
print(mult(2, 2))
print(mult(7, 8))
print(mult(12, 86))
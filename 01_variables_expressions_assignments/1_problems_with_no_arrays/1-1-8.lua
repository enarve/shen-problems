-- Problem 1.1.8
-- Factorial

local function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

-- Test
print(fact(3))
print(fact(1))
print(fact(5))
print(fact(11))
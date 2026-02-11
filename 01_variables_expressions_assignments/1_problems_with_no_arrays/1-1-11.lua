-- Problem 1.1.11

local function fact(n)
    if n == 1 or n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

local function series(n)
    local sum = 0
    for i = 0, n do 
        sum = sum + 1 / fact(i)
    end
    return sum
end

-- Test
print(series(2))
print(series(5))
print(series(18))
print(series(39))
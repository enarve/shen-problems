-- Problem 1.1.12
-- in O(n) assignments

local function fact(n)
    if n == 1 or n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

local function e_series(n)
    local sum = 0
    local f = fact(n)
    for i = n, 0, -1 do 
        sum = sum + 1 / f
        if i > 1 then
            f = f / i
        end
    end
    return sum
end

-- Test
print(e_series(15))
-- Problem 1.1.4
-- pow(n) in O(log n)

-- Recursive
local function pow_rec(a, n)
    if n == 1 then
        return a
    elseif n % 2 == 0 then
        local b = pow_rec(a, n/2)
        return b * b
    else
        local b = pow_rec(a, (n-1)/2)
        return b * b * a
    end
end

-- Iterative
local function pow(a, n)
    local k = n
    local res = a
    local b = 1
    
    while k ~= 1 do
        if k % 2 == 0 then
            k = k / 2
            res = res * res
        else
            k = k - 1
            b = b * res
        end
    end

    return b * res
end

-- Test
print(pow(5, 3))
print(pow(2, 8))
print(pow(7, 11))
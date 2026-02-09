-- Problem 1.1.3

local function pow(a, n)
    local res = 1
    for i = 1, n do
        res = res * a
    end
    return res
end

local function pow_alt(a, n)
    local k = 0
    local b = 1
    while k ~= n do
        b = b * a
        k = k + 1
    end
    return b
end

-- Test
print(pow(2, 8))
print(pow(5, 3))
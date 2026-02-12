-- Problem 1.1.13
-- NOD a, b

local function min(a, b)
    if a < b then
        return a
    else
        return b
    end
end

local function max(a, b)
    if a >= b then
        return a
    else
        return b
    end
end

local function nod(a, b)
    local min = min(a, b)
    local max = max(a, b)
    if min == 0 then
        return max
    end
    for i = min, 1, -1 do
        if max % i == 0 and min % i == 0 then
            return i
        end
    end
end

local function euclide(a, b)
    local m = a
    local n = b
    while not ((m == 0) or (n == 0)) do
        if m >= n then
            m = m - n
        else 
            n = n - m
        end
    end
    if m == 0 then
        return n
    else
        return m
    end
end

-- Test
print("nod:")
print(nod(4, 8))
print(nod(32, 16))
print(nod(0, 9))

print("euclide:")
print(euclide(4, 8))
print(euclide(32, 16))
print(euclide(0, 9))
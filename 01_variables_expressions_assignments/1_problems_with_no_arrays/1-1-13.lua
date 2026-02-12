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

-- Test
print(nod(4, 8))
print(nod(32, 16))
print(nod(0, 9))
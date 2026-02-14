-- Problem 1.1.15
-- d = a * x + b * y

local function euclide(a, b)
    local p = 1
    local q = 0
    local r = 0
    local s = 1

    local m = p * a + q * b
    local n = r * a + s * b

    while not ((m == 0) or (n == 0)) do
        if m >= n then
            m = m - n; p = p - r; q = q - s
        else
            n = n - m; r = r - p; s = s - q
        end
    end
    if m == 0 then
        return n, r, s
    else 
        return m, p, q
    end
end

-- Test
print(euclide(4, 8))
print(euclide(32, 16))
print(euclide(0, 9))
print(euclide(78, 45))